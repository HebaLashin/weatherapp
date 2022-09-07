import 'package:get/get.dart';
import 'package:untitled/model/currentweatherdata.dart';
import 'package:untitled/model/fivedaydata.dart';
import 'package:untitled/service/weatherService.dart';

class HomeController extends  GetxController {

   String? city  ;
   CurrentWeatherData currentWeatherData  = CurrentWeatherData();
 List<FiveDayDate> fivedaydata = [];
 List<CurrentWeatherData> datalist = [];


  HomeController({required this.city});

  void onInit() {
    initstate();
    //getTopFiveCities();
    super.onInit();
  }

  void updateWeather(){
    initstate();
  }

  void initstate() {
    getCurrentWeatherData();
    getFiveDaysDate();

  }

  void getTopFiveCities() {
   List<String> cities = [
     'cairo','alex','zag','qalubia','aswan'
   ];
   cities.forEach((element) {
    WeatherService(city: '$element').getCurrentWeatherData(
        onSuccess:(date) {
          datalist.add(date);
          update();
        },
        onError: (error){
          print(error);
          update();
        }
    );
   });
  }

  void getCurrentWeatherData() {
    WeatherService(city: '$city').getCurrentWeatherData(
      onSuccess:(date) {
        currentWeatherData = date;
        update();
      },
      onError: (error){
        print(error);
        update();
      }
    );
  }

  void getFiveDaysDate() {
    WeatherService(city: '$city').getfiveThreeHoursForcastData(
      onSuccess:(data) {
        fivedaydata = data;
        update();
      },
        onError:(error){
         print(error);
         update();
        }
    );

  }


}