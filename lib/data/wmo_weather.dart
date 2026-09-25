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

String displayTemperature(double celsius) {
  return '${celsius.toStringAsFixed(1)}度';
}

String displayCondition(String condition) {
  return _japaneseConditions[condition] ?? condition;
}
