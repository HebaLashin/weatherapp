import 'package:flutter/material.dart';
import 'package:untitled/view/pages/listviewmenu.dart';

class Settings extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        drawer: ListviewMenu(),
        appBar:  AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
          title: Text('Settings', style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily:
            'flutterfonts',
          ),)
          ),
        body: Container(
          margin : EdgeInsets.all(20),
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text ('Change Theme', style: Theme.of(context)
                   .textTheme.caption!.copyWith(color: Colors.black,
                 fontSize: 18,fontFamily:'flutterfonts',
               ),),
               IconButton(onPressed: (){print('clicked');},
                   icon:Icon(Icons.toggle_on,size: 50),color: Colors.black54,),


            ]
        ),)
        );
  }


}