import 'package:flutter_weatherapp_provider/viewmodels/weather_view_model.dart';
import 'package:get_it/get_it.dart';

import 'data/weather_api_client.dart';
import 'data/weather_repository.dart';

GetIt locator = GetIt();

void setupLocator() {
  locator.registerLazySingleton(() => WeatherRepository());
  locator.registerLazySingleton(() => WeatherApiClient());
  locator.registerFactory(() => WeatherViewModel());
}
//singleton bütün uygulama boyunca tek bir nesne üzerinden ilerlemek
// her bir isteğe karşı yeni bir nesne üretmek istemiyorsak
//program çalışır çalışmaz inizilat olur.

//lazy singleton ise ne zaman çağrılırsa ihtiyaç halinde kullanılır.
