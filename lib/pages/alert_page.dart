import 'dart:ui';

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  showMyAlert(BuildContext context1){
    showDialog(context: context1, builder: (BuildContext context) {
      return AlertDialog(
        title: Text("AlertDialogExample!!!"),
        backgroundColor: Colors.white,
        content: Text("Este es un ejemplo del alertDialog"),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Cancelar"),),
          TextButton(onPressed: () {}, child: Text("Aceptar"),),
        ],
      );
    },);

  }
  showMyAlert2(BuildContext context1){
    showDialog(context: context1, builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage:NetworkImage("https://images.pexels.com/photos/1921336/pexels-photo-1921336.jpeg") ,
            radius: 30.0,
            ),
            SizedBox(height: 15.0,),
            Text("Blog post published"),
              ],
            ),
            
        backgroundColor: Colors.white,
        content: Text("This blog has been published. Team members will able to edit this post and republish changes "),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 10.0),
                color: Colors.blue,
                child: Text("Cancelar",style: TextStyle(
                  color: Colors.white,
                ),)),),
              TextButton(onPressed: () {}, child: Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.symmetric(horizontal: 35.0,vertical: 10.0),
                color: Colors.blue,
                child: Text("Confirmar",style: TextStyle(
                  color: Colors.white,
                ),)),),
            ],
          ),
        ],
      );
    },);

  }
  showMyAlert3(BuildContext context1){
    showDialog(context: context1, builder: (BuildContext context) {
      return AlertDialog(
        title: Column(
          children: [
            Image.network("https://images.pexels.com/photos/4050298/pexels-photo-4050298.jpeg",
            height: 150.0,width:250.0 ,),
            Text("Your video has been upload!"),
          ],
        ),
        backgroundColor: Colors.white,
        content: Text("You're video has finshed up loadding and is live.",
        style: TextStyle(
          fontSize: 13.0,
          color: Colors.grey,
        ),),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text("Cancelar"),),
          TextButton(onPressed: () {}, child: Text("Aceptar"),),
        ],
      );
    },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showMyAlert(context);
            }, child: Text("Alert"),
            ),
            ElevatedButton(onPressed: (){
              showMyAlert2(context);
            }, child: Text("Alert2"),
            ),
            ElevatedButton(onPressed: (){
              showMyAlert3(context);
            }, child: Text("Alert3"),
            ),
          ],
        ),
      ),
    );
  }
}


//https://github.com/duducito15/app04_componentes