import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/cities.dart';
import '../../data/models/weather.dart';
import '../../data/weather_exception.dart';
import '../../data/wmo_weather.dart';
import 'weather_notifier.dart';

class WeatherScreen extends ConsumerWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final city = ref.watch(selectedCityProvider);
    final weather = ref.watch(weatherProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Weather')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownButtonFormField<City>(
            key: const Key('cityDropdown'),
            initialValue: city,
            decoration: const InputDecoration(
              labelText: 'City',
              border: OutlineInputBorder(),
            ),
            items: [
              for (final item in Cities.all)
                DropdownMenuItem(value: item, child: Text(item.name)),
            ],
            onChanged: (value) {
              if (value != null) {
                ref.read(selectedCityProvider.notifier).select(value);
              }
            },
          ),
          const SizedBox(height: 24),
          weather.when(
            loading: () => const Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 48),
                child: CircularProgressIndicator(key: Key('loadingIndicator')),
              ),
            ),
            error: (error, _) => _ErrorView(
              message: error is WeatherException
                  ? error.message
                  : 'Something went wrong. Please try again.',
              onRetry: () => ref.read(weatherProvider.notifier).retry(),
            ),
            data: (forecast) => _WeatherBody(forecast: forecast),
          ),
        ],
      ),
    );
  }
}

class _WeatherBody extends StatelessWidget {
  const _WeatherBody({required this.forecast});

  final WeatherForecast forecast;

  @override
  Widget build(BuildContext context) {
    final current = forecast.current;
    final city = forecast.city;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Current', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        Card(
          child: ListTile(
            title: Text(
              '${displayTemperature(city, current.temperatureC)} · ${displayCondition(city, current.condition)}',
            ),
            subtitle: Text('Observed ${_formatTime(current.observedAt)}'),
          ),
        ),
        const SizedBox(height: 24),
        Text('Hourly', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        for (final hour in forecast.hourly)
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              '${_formatTime(hour.at)} · ${displayTemperature(city, hour.temperatureC)}',
            ),
            subtitle: Text(displayCondition(city, hour.condition)),
          ),
      ],
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(message, textAlign: TextAlign.center),
        const SizedBox(height: 16),
        FilledButton(
          key: const Key('retryButton'),
          onPressed: onRetry,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}

String _formatTime(DateTime time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
