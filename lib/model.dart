class SkyInfo {
  final String description;
  final String icon;

  SkyInfo({required this.description, required this.icon});

  factory SkyInfo.fromJson(Map<String, dynamic> json) {
    final description = json['description'];
    final icon = json['icon'];
    return SkyInfo(description: description, icon: icon);
  }
}

class TemperatureThings {
  final double temp;

  TemperatureThings({required this.temp});

  factory TemperatureThings.fromJson(Map<String, dynamic> json) {
    final temp = json['temp'];
    return TemperatureThings(temp: temp);
  }
}

class WeatherResponse {
  final String cityName;
  final TemperatureThings tempInfo;
  final SkyInfo skyInfo;

  String get iconUrl {
    return 'https://openweathermap.org/img/wn/${skyInfo.icon}@2x.png';
  }

  WeatherResponse(
      {required this.cityName, required this.tempInfo, required this.skyInfo});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];

    final tempInfoJson = json['main'];
    final tempInfo = TemperatureThings.fromJson(tempInfoJson);

    final skyInfoJson = json['weather'][0];
    final skyInfo = SkyInfo.fromJson(skyInfoJson);

    return WeatherResponse(
        cityName: cityName, tempInfo: tempInfo, skyInfo: skyInfo);
  }
}
