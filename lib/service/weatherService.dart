import 'package:untitled/api/apiRepo.dart';
import 'package:untitled/model/currentweatherdata.dart';
import 'package:untitled/model/fivedaydata.dart';

class WeatherService {
  final String city;

WeatherService({required this.city});

//https://api.openweathermap.org/data/2.5/weather?q=cairo&appid=c4c4d91a655ba0bfe239ea58d84696f9

  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = 'appid=c4c4d91a655ba0bfe239ea58d84696f9';

void getCurrentWeatherData({
    Function ()? beforeSend,
    Function (CurrentWeatherData currentWeatherData)?onSuccess,
    Function (dynamic error )? onError,
  }){
  final url = '${baseUrl}/weather?q=${city}&lang=en&${apiKey}';
  ApiRepo(
    url: '$url',
  ).get(
      beforeSend: () => {
        if (beforeSend != null)
          {
            beforeSend(),
          },
      },
      onSuccess: (data) => {
        onSuccess!(CurrentWeatherData.fromJson(data)),
      },
      onError: (error) => {
        if (onError != null)
          {
            print(error),
            onError(error),
          }
      });
}


  void getfiveThreeHoursForcastData({
   // https://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=c4c4d91a655ba0bfe239ea58d84696f9
    Function()? beforSend,
    Function(List<FiveDayDate> fiveDayData)? onSuccess,
    Function(dynamic error)? onError,
  }){
    final url = '$baseUrl/forecast?q=$city&lang=en&$apiKey';
    print(url);
    ApiRepo(
      url: '$url',
    ).get(
        beforeSend: () => {},
        onSuccess: (data) => {
          onSuccess!((data['list'] as List)
              .map((t) => FiveDayDate.fromJson(t))
              .toList())
        },
        onError: (error) => {
          print(error),
          onError!(error),
        });
  }
}


