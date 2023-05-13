part of 'weather_bloc.dart';

@immutable
abstract class WeatherState {}


class WeatherInitial extends WeatherState {
   WeatherInitial();
}

class WeatherLoading extends WeatherState {
   WeatherLoading();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;
   WeatherLoaded(this.weather);
}

class WeatherError extends WeatherState {
  final String message;
   WeatherError(this.message);
  @freezed
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is WeatherLoaded && o.weather == Weather;
  }
 }

  
