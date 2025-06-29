import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_final_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_final_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_final_app/views/NoWeatherBody.dart';
import 'package:weather_final_app/views/SearchPage.dart';
import 'package:weather_final_app/views/WeatherInfoBody.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Weather App',
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Searchpage(),
                      ));
                },
                icon: Icon(
                  Icons.search,
                ))
          ],
        ),
        body: BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            if (state is WeatherInitialState) {
              return NoWeateherBody();
            } else if (state is WeatherLoadedState) {
              return WeatherInfoBody(
                weatherModel: state.weatherModel,
              );
            } else {
              return Text('oops, there are error');
            }
          },
        ));
  }
}
