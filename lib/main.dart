import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:untitled/theme/theme.dart';
import 'package:untitled/utils/binding/homebinding.dart';
import 'package:untitled/view/pages/homescreen.dart';
import 'package:untitled/view/pages/listviewmenu.dart';

void main() {
  runApp(const MyApp());
 // runApp(ChangeNotifierProvider(child:const MyApp(),
 // create: (BuildContext context)=>ThemeProvider(isdarkmood : true) ,
 // ));

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //  return Consumer<ThemeProvider?>(
    //  builder: (context,themeProvider,child){
    return GetMaterialApp(
      initialRoute: '/',
      //  theme: themeProvider?.gettheme,
      getPages: [
        GetPage(
          name: '/',
          page: () => HomeScreen(),
          binding: HomeBinding(),
        )
      ],);


  /*
    return MaterialApp(
      home: Scaffold(
        drawer:ListviewMenu(),


        body:HomeScreen(), //const MyHomePage(title: 'Flutter Demo Home Page'),

      )
    );
  */

  }
}
