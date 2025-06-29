import 'package:flutter/material.dart';
import 'package:weather_final_app/Models/Weather_Model.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          const Color.fromARGB(255, 14, 147, 255),
          const Color.fromARGB(255, 227, 243, 255)
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 5,
          ),
          Text(
            weatherModel.cityName,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
              'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(
                fontSize: 17,
              )),
          Spacer(
            flex: 1,
          ),
          Row(
            children: [
              Spacer(
                flex: 2,
              ),
              Image.network('https:${weatherModel.image}'),
              Spacer(
                flex: 1,
              ),
              Text(
                weatherModel.temp.toString(),
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Text('max temp : ${weatherModel.maxTemp.round()}'),
                  Text('min temp : ${weatherModel.minTemp.round()}'),
                ],
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            weatherModel.statues,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
