import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../controller/homecontroller.dart';

class ListviewMenu extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
   return  Drawer(
         child : Container (
           margin: EdgeInsets.only(top: 20),
           child:  ListView(
             // Important: Remove any padding from the ListView.
             padding: EdgeInsets.zero,
             children: [
               ListTile(

                 trailing: Icon(
                   Icons.settings,
                 ),
                 title: const Text(' '),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),

               ListTile(
                 leading: Icon(
                   Icons.star,
                 ),
                 title: const Text('Favourate location '),
                 onTap: () {
                   Navigator.pop(context);
                 },
                 trailing: Icon(
                   Icons.info_outline,
                 ),
               ),

               Container(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 color: Colors.white,
                 height: 40.0,
                 child: Center(
                   child: Text(
                     "---------------------------------------------------------------------------",
                     maxLines: 1,
                   ),
                 ),
               ),

               ListTile(
                 leading: Icon(
                   Icons.location_on,
                 ),
                 title: const Text('Other Locations'),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),

               Container(
                   margin: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                   child: ElevatedButton(
                     onPressed: () {},
                     child: Text('Manage Locations'),
                     style: ElevatedButton.styleFrom(primary : Colors.black12,shape: StadiumBorder()),
                   )
               ),

               Container(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 color: Colors.white,
                 height: 40.0,
                 child: Center(
                   child: Text(
                     "---------------------------------------------------------------------------",
                     maxLines: 1,
                   ),
                 ),
               ),

               ListTile(
                 leading: Icon(
                   Icons.info_outline,
                 ),
                 title: const Text('Report Wrong location'),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),

               ListTile(
                 leading: Icon(
                   Icons.headset_mic_outlined,
                 ),
                 title: const Text('Contact Us'),
                 onTap: () {
                   Navigator.pop(context);
                 },
               ),

             ],
           ),
         )




   );
  }


}