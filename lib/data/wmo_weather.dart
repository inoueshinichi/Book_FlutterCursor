import 'cities.dart';

String weatherConditionLabel(int weatherCode) {
  if (weatherCode == 0) {
    return 'Clear';
  }
  if (weatherCode <= 3) {
    return 'Cloudy';
  }
  if (weatherCode == 45 || weatherCode == 48) {
    return 'Fog';
  }
  if (weatherCode >= 51 && weatherCode <= 67) {
    return 'Rain';
  }
  if (weatherCode >= 71 && weatherCode <= 77) {
    return 'Snow';
  }
  if (weatherCode >= 80 && weatherCode <= 82) {
    return 'Showers';
  }
  if (weatherCode >= 95 && weatherCode <= 99) {
    return 'Thunderstorm';
  }
  return 'Unknown';
}

const _japaneseConditions = {
  'Clear': '晴れ',
  'Cloudy': '曇り',
  'Fog': '霧',
  'Rain': '雨',
  'Snow': '雪',
  'Showers': 'にわか雨',
  'Thunderstorm': '雷雨',
  'Unknown': '不明',
};

/// Tokyo stays in English. Other cities use Japanese labels and 度.
String displayTemperature(City city, double celsius) {
  final value = celsius.toStringAsFixed(1);
  if (city.id == Cities.tokyo.id) {
    return '$value°C';
  }
  return '$value度';
}

String displayCondition(City city, String condition) {
  if (city.id == Cities.tokyo.id) {
    return condition;
  }
  return _japaneseConditions[condition] ?? condition;
}
