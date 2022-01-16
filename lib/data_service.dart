import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rose_hacks_2022/model.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParam = {'q': city, 'appid': 'a2f82744c717d909f8507ee70091288d', 'units': 'imperial'};
    final url =
        Uri.http('api.openweathermap.org', '/data/2.5/weather', queryParam);

    final response = await http.get(url);

    print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}
