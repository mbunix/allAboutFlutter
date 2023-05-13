import 'dart:html';

import 'package:flutter_cubit_bloc_tutorial/data/model/weather.dart';;
import 'package:freezed_annotation/freezed_annotation.dart';

part  'weather_cubit.dart';

@immutable
abstract class WeatherState {
  const WeatherState();
}

class WeatherInitial extends WeatherState {
  const WeatherInitial();
}

class WeatherLoading extends WeatherState {
  const WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
  const WeatherLoaded(this.weather);
}

class WeatherError extends WeatherState {
  final String message;
  const WeatherError(this.message);
  @freezed 
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is WeatherLoaded && o.weather == Weather;
  }
 
 }

  

