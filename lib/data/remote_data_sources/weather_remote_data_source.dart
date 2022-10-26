import 'package:dio/dio.dart';
class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=3a51fad462c44b9c951121105222610&q=Cracow&aqi=no
    final response = await Dio().get<Map<String, dynamic>>(
        'http://api.weatherapi.com/v1/current.json?key=3a51fad462c44b9c951121105222610&q=$city&aqi=no');
    return response.data;
  }
}
