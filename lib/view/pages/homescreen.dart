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
    init: HomeController(),
      builder: (controller){
       return  Scaffold(
         body: SafeArea(
         child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter:
                        ColorFilter.mode(Colors.black38, BlendMode.darken),
                        image: AssetImage(
                          'assets/images/cloudinbluesky.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
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
                          padding: EdgeInsets.only(top: 50, left: 20, right: 20),
                          child: TextField(
                            onChanged: (value) => controller.city = value,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                            ),
                            textInputAction: TextInputAction.search,
                            onSubmitted: (value) => controller.updateWeather(),
                            decoration: InputDecoration(
                              suffix: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              hintStyle: TextStyle(color: Colors.white),
                              hintText: 'Search'.toUpperCase(),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.white),
                              ),                        ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(0.0, 1.0),
                          child: SizedBox(
                              height: 10,
                              width: 10,
                              child: OverflowBox(
                                  minWidth: 0.0,
                                  maxWidth: MediaQuery.of(context).size.width,
                                  minHeight: 0.0,
                                  maxHeight: (MediaQuery.of(context).size.height / 4),
                                  child: Stack(
                                      children: <Widget>[
                                        Container(
                                          padding: EdgeInsets.symmetric(horizontal: 15),
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: Card(
                                            color: Colors.white,
                                            elevation: 5,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(25),
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.only(
                                                      top: 15, left: 20, right: 20),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                      Center(
                                                        child: Text(
                                                          '${controller.currentWeatherData?.name}'
                                                         // '${controller.city}'// .currentWeatherData.name}'
                                                              .toUpperCase(),
                                                        ),
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          DateFormat()
                                                              .add_MMMMEEEEd()
                                                              .format(DateTime.now()),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Divider(),
                                              ],
                                            ),
                                          ),
                                        )])


                              )
                          ),)
                      ],

                    )
                ),
              ),
/*
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(top: 80,left: 20, right: 20),
                      child: Card( color: Colors.white,elevation: 5,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(child: Text('sunrise: ${controller.currentWeatherData?.sys?.sunrise} : am'.toUpperCase(),),),
                    Spacer(flex: 1),
                    Container(child: Text('sunset: ${controller.currentWeatherData?.sys?.sunset} : pm'.toUpperCase(),),),
                  ],))
                  )
                  ),

              Expanded(
                  flex: 1,
                  child: Container(
                      padding: EdgeInsets.only(top: 20,left: 20, right: 20),
                      child: Card( color: Colors.white,elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(child: Text('humidity: ${controller.currentWeatherData?.main?.humidity}'.toUpperCase(),),),
                              Spacer(flex: 1),
                              Container(child: Text('wind : ${controller.currentWeatherData?.wind?.speed}km/ph'.toUpperCase(),),),
                            ],))
                  )
              ),

*/

        ]
          )
         ),
        );
      },
     );

  }

}