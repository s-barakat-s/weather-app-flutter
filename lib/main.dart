import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_final_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_final_app/views/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        // theme: ThemeData(
        //     primarySwatch: getThemeColor(
        //   BlocProvider.of<GetWeatherCubit>(context).weatherModel?.statues,
        // )),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

MaterialColor getThemeColor(String? status) {
  if (status == null)
    return Colors.blue;
  else
    switch (status.toLowerCase()) {
      case "sunny":
      case "clear":
        return Colors.amber;

      case "partly cloudy":
        return Colors.orange;

      case "cloudy":
      case "overcast":
        return Colors.blueGrey;

      case "mist":
      case "fog":
      case "freezing fog":
        return Colors.grey;

      case "patchy rain possible":
      case "light drizzle":
      case "patchy light drizzle":
      case "patchy light rain":
      case "light rain":
      case "light rain shower":
        return Colors.lightBlue;

      case "moderate rain":
      case "moderate rain at times":
      case "heavy rain":
      case "heavy rain at times":
      case "moderate or heavy rain shower":
      case "torrential rain shower":
        return Colors.blue;

      case "freezing drizzle":
      case "heavy freezing drizzle":
      case "light freezing rain":
      case "moderate or heavy freezing rain":
        return Colors.indigo;

      case "patchy snow possible":
      case "patchy light snow":
      case "light snow":
      case "snow":
      case "light snow showers":
        return Colors.cyan;

      case "moderate snow":
      case "heavy snow":
      case "blowing snow":
      case "blizzard":
      case "moderate or heavy snow showers":
        return Colors.lightBlue;

      case "ice pellets":
      case "showers of ice pellets":
      case "light showers of ice pellets":
      case "moderate or heavy showers of ice pellets":
        return Colors.deepPurple;

      case "sleet":
      case "light sleet":
      case "moderate or heavy sleet":
      case "light sleet showers":
      case "moderate or heavy sleet showers":
      case "patchy sleet possible":
        return Colors.teal;

      case "thundery outbreaks possible":
      case "patchy light rain with thunder":
      case "moderate or heavy rain with thunder":
      case "patchy light snow with thunder":
      case "moderate or heavy snow with thunder":
        return Colors.deepOrange;

      default:
        return Colors.blue; // Default fallback
    }
}
