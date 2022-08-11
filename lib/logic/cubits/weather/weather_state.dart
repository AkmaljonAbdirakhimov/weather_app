part of 'weather_cubit.dart';

@immutable
abstract class WeatherState {
  final Weather? weather;

  WeatherState({this.weather});
}

class WeatherInitial extends WeatherState {}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded(this.weather) : super(weather: weather);
}

class WeatherLoading extends WeatherState {}

class WeatherError extends WeatherState {
  final String message;

  WeatherError(this.message);
}
