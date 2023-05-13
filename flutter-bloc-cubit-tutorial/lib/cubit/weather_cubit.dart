import 'package:bloc/bloc.dart';
import 'package:flutter_cubit_bloc_tutorial/cubit/weather_state.dart';
import 'package:flutter_cubit_bloc_tutorial/data/weather_repository.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit(this._weatherRepository) : super(WeatherInitial());
  Future<void> getWeather(String cityName) async {
    try{
      emit (WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(cityName);
      emit(WeatherLoaded(weather))
    }on NetworkException {
      emit(WeatherError("could not get weather, please try again"));
    }
  }
}
