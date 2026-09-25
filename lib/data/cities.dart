class City {
  const City({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  final String id;
  final String name;
  final double latitude;
  final double longitude;

  @override
  bool operator ==(Object other) {
    return other is City &&
        other.id == id &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode => Object.hash(id, latitude, longitude);
}

abstract final class Cities {
  static const tokyo = City(
    id: 'tokyo',
    name: 'Tokyo',
    latitude: 35.6895,
    longitude: 139.6917,
  );
  static const osaka = City(
    id: 'osaka',
    name: 'Osaka',
    latitude: 34.6937,
    longitude: 135.5023,
  );
  static const sapporo = City(
    id: 'sapporo',
    name: 'Sapporo',
    latitude: 43.0618,
    longitude: 141.3545,
  );
  static const fukuoka = City(
    id: 'fukuoka',
    name: 'Fukuoka',
    latitude: 33.5904,
    longitude: 130.4017,
  );

  static const all = [tokyo, osaka, sapporo, fukuoka];

  static City get defaultCity => tokyo;
}
