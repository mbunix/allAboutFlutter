// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

part of 'weather_bloc.dart';

@immutable
abstract class WeatherEvent {}

class GetWeather extends WeatherEvent {
  final String cityName;

  GetWather(this.cityName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cityName': cityName,
    };
  }

  factory GetWeather.fromMap(Map<String, dynamic> map) {
    return GetWeather(
      cityName: map['cityName'] as String,
    );
  }
 
 
  String toJson() => json.encode(toMap());

  factory GetWeather.fromJson(String source) => GetWeather.fromMap(json.decode(source) as Map<String, dynamic>);
}
