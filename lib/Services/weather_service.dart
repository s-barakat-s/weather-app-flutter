import 'package:dio/dio.dart';
import 'package:weather_final_app/Models/Weather_Model.dart';

class WeatherService {
  final Dio dio;
  final String baseURL = 'http://api.weatherapi.com/v1';
  final String key = '103cf3565cdf499098893121250902';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response responce =
          await dio.get('$baseURL/forecast.json?key=$key&q=$cityName&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(responce.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'oops , there was an error , please try later';
      throw Exception(errMessage);
    } catch (e) {
      throw Exception('oops , there was an error , please try later');
    }
  }
}
