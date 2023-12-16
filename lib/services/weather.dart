import 'package:weather_today_completed/services/network.dart';


Future<dynamic> getCurrentLocation(double latitude, double longitude) async {
  final String weatherUrl =
      "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=5a18fc6e52dc7342ee016a20e95a106c&units=metric";
  NetworkHelper networkHelper = NetworkHelper('$weatherUrl');

  var weatherData = await networkHelper.getData();
  return weatherData;
}