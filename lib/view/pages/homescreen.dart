import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:intl/intl.dart';
import 'package:untitled/controller/homecontroller.dart';
import 'package:untitled/view/pages/listviewmenu.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
   return  GetBuilder<HomeController>(
    init: HomeController(city: 'Cairo'),
      builder: (controller) {
        return Scaffold(
            drawer:ListviewMenu(),
            body: SafeArea(
                child: Container(
                decoration: BoxDecoration(
                image: DecorationImage(
                colorFilter:
                ColorFilter.mode(Colors.black38, BlendMode
                    .darken),
              image: AssetImage(
                'assets/images/bkimage.jpg',
              ),
              fit: BoxFit.cover,
            ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),


                    child :Column(children: [
                      Expanded(
                        flex: 1,
                          child: Stack(
                            children: <Widget>[
                              Container(
                                child: AppBar(
                                  backgroundColor: Colors.transparent,
                                  elevation: 0,
                                  leading: IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      ListviewMenu();
                                    },
                                  ),
                                ),),

                              Container(
                                padding: EdgeInsets.only(
                                    top: 40, left: 20, right: 20),
                                child: TextField(
                                  onChanged: (value) => controller.city = value,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 21,
                                  ),
                                  textInputAction: TextInputAction.search,
                                  onSubmitted: (value) =>
                                      controller.updateWeather(),
                                  decoration: InputDecoration(
                                    suffix: Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    hintStyle: TextStyle(color: Colors.white),
                                    hintText: 'Search'.toUpperCase(),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.white),
                                    ),),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(
                                  top: 15, left: 20, right: 20),
                                margin: EdgeInsets.only(top: 100),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Center(
                                              child: Text(
                                                '${(controller
                                                    .currentWeatherData.main!
                                                    .temp! - 273.15)
                                                    .round()
                                                    .toString()}\u2103'
                                                    .toUpperCase(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .caption!
                                                    .copyWith(
                                                  color: Colors.white70,
                                                  fontSize: 22,
                                                  fontFamily:
                                                  'flutterfonts',
                                                ),),
                                            ),),

                                          Container(
                                            child: Center(child: Text(
                                             // controller.fivedaydata.length.toString(),
                                                '${controller.currentWeatherData.name}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                color: Colors.white70,
                                                fontSize: 15,
                                                fontFamily:
                                                'flutterfonts',
                                              ),
                                                 )
                                              ,),
                                          ),

                                          Container(child: Center(
                                            child: Text(
                                              '${(controller.currentWeatherData
                                                  .main!.tempMax! - 273.15)
                                                  .round()
                                                  .toString()}\u2103'' / '
                                                  '${(controller
                                                  .currentWeatherData.main!
                                                  .tempMin! - 273.15)
                                                  .round()
                                                  .toString()}\u2103'' FeeLsLike '
                                                  '${(controller
                                                  .currentWeatherData.main!
                                                  .feelsLike! - 273.15)
                                                  .round()
                                                  .toString()}\u2103'
                                                  .toUpperCase(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                color: Colors.white70,
                                                fontSize: 8,
                                                fontFamily:
                                                'flutterfonts',
                                              ),
                                            ),
                                          ),),


                                          Container(child: Center(
                                            child: Text(DateFormat()
                                                .add_MMMMEEEEd()
                                                .format(DateTime.now()),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .caption!
                                                  .copyWith(
                                                color: Colors.white70,
                                                fontSize: 14,
                                                fontFamily:
                                                'flutterfonts',
                                              ),
                                            ),
                                          ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Spacer(),

                                    Container(
                                      child: Container(
                                    child:Image.asset('assets/images/sun.png', width:60,height: 60,),

                                      ),),

                                    /*       Center(
                                  child: Text(
                               '${controller.currentWeatherData.name}  '' TEMP=   '
                                   '${(controller.currentWeatherData.main!.temp! - 273.15).round().toString()}\u2103'.toUpperCase(),  ),
                               ),
                        */

                                    /*   Center(
                                  child: Text(  DateFormat()
                                        .add_MMMMEEEEd()
                                        .format(DateTime.now()),
                                  ),
                                ),*/
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ),


                    Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(top: 30,left: 20, right: 20),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Column(
                      children:[
                      Container(  child: Text('Sunrise',
                        style: Theme.of(context).textTheme.caption!.copyWith(
                        color: Colors.white70,fontSize: 12,
                        fontFamily:'flutterfonts',
                      ),  ),),
                      Container( child: Text('${controller.currentWeatherData?.sys?.sunrise.toString()[4]}'' : '
                      '${controller.currentWeatherData?.sys?.sunrise.toString()[5]}''${controller.currentWeatherData?.sys?.sunrise.toString()[6]}  AM'
                          .toUpperCase(),  style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(
                        color: Colors.white70,
                        fontSize: 12,
                        fontFamily:
                        'flutterfonts',
                      ),
                      ),),
                      Container( child:Image.asset('assets/images/sunrise.png', width:60,height: 60,),
                      )
                      ]

                  )
       ,),
                    Spacer(flex: 1),
                    Container( child: Column( children:[
                              Container(  child: Text('Sunset',  style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                color: Colors.white70,
                                fontSize: 12,
                                fontFamily:
                                'flutterfonts',
                              ),),   ),
                              Container( child: Text('${controller.currentWeatherData?.sys?.sunset.toString()[4]}'' : '
                                  '${controller.currentWeatherData?.sys?.sunset.toString()[5]}''${controller.currentWeatherData?.sys?.sunset.toString()[6]}  PM'
                                  .toUpperCase(),  style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                color: Colors.white70,
                                fontSize: 12,
                                fontFamily:
                                'flutterfonts',
                              ),
                              ),),
                              Container( child:Image.asset('assets/images/sunset.png', width:60,height: 60,),
                              )
                            ]
                        )
                    ),
                  ],))
                  ),

                    Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(top: 30,left: 20, right: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(child: Text('humidity: ${controller.currentWeatherData?.main?.humidity}'.toUpperCase(),  style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily:
                                'flutterfonts',
                              ),),),
                              Spacer(flex: 1),
                              Container(child: Text('wind : ${controller.currentWeatherData?.wind?.speed}km/ph'.toUpperCase(),  style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(
                                color: Colors.white70,
                                fontSize: 14,
                                fontFamily:
                                'flutterfonts',
                              ),),),
                            ],))

              ),


                ])
        )));
      }


     );

  }

}