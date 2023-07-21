import 'package:flutter/material.dart';
import 'package:find_a_dental_clinic/ui/welcome_screen/welcome_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      title: "Find a Dental Clinic",
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );

  }
}