import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRemoteDataSource  {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>('http://api.weatherapi.com/v1/current.json?key=90f5ed3da12846eabcf195238231801&q=$city&aqi=no');
    return response.data;
  }
}