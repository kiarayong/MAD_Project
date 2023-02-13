import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                'Fitness Company',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: Text(
                  'We are a company dedicated to helping people achieve their fitness goals. Our team of certified trainers and nutritionists will work with you to develop a customized plan that fits your lifestyle and helps you achieve your desired results.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                'assets/images/fitness.jpg',
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
