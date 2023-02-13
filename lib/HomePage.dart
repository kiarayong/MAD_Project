import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_smart_city/meals.dart';
import 'package:my_smart_city/recipe.dart';
import 'package:my_smart_city/routes.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        elevation: 0.0,
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Text(
              "${DateFormat("EEEE").format(today)},${DateFormat("d MMMM").format(today)}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CircleAvatar(
            radius: 20.0,
            child: Image.asset(
              'images/profilepic2.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.deepOrange[800],
              ),
              tileColor: Colors.orange[50],
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.deepOrange[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.homepage,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.deepOrange[50],
              ),
              tileColor: Colors.deepOrange[800],
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.deepOrange[50]),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.profile,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.deepOrange[800],
              ),
              tileColor: Colors.orange[50],
              title: Text(
                'About Us',
                style: TextStyle(
                  color: Colors.deepOrange[800],
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.aboutus,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.fitness_center,
                color: Colors.deepOrange[50],
              ),
              title: Text(
                'WorkOut',
                style: TextStyle(
                  color: Colors.deepOrange[50],
                ),
              ),
              tileColor: Colors.deepOrange[800],
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.exercise,
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.deepOrange[800],
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Colors.deepOrange[800],
                ),
              ),
              tileColor: Colors.orange[50],
              onTap: () {
                Navigator.pushNamed(
                  context,
                  Routes.login,
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.yellow[50],
      body: Stack(children: <Widget>[
        Positioned(
          top: 0,
          height: 160,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.orange[100],
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red[300],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(28),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                          ),
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Heart Rate',
                          style: TextStyle(
                            fontSize: (14),
                          ),
                        ),
                        Text(
                          '90',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'BPM',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.lightBlue[900],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(28),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.lightBlue[900],
                          ),
                          child: Icon(
                            Icons.local_fire_department_outlined,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Calories',
                          style: TextStyle(
                            fontSize: (14),
                          ),
                        ),
                        Text(
                          '750',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Kcal',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.pink,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(28),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink[300],
                          ),
                          child: Icon(
                            Icons.bedtime,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sleep',
                          style: TextStyle(
                            fontSize: (14),
                          ),
                        ),
                        Text(
                          '9:20',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Hours',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    height: 130,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.cyan[800],
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(28),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.cyan[800],
                          ),
                          child: Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Workout',
                          style: TextStyle(
                            fontSize: (14),
                          ),
                        ),
                        Text(
                          '90',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          'Mins',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 160,
            left: 0,
            right: 0,
            height: 150,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: Container(
                color: Colors.orange[100],
                child: SfRadialGauge(
                  axes: <RadialAxis>[
                    RadialAxis(
                      minimum: 0,
                      maximum: 100,
                      axisLineStyle: AxisLineStyle(
                        cornerStyle: CornerStyle.bothCurve,
                        thickness: 0.2,
                        thicknessUnit: GaugeSizeUnit.factor,
                      ),
                      showTicks: false,
                      showLabels: false,
                      pointers: <GaugePointer>[
                        RangePointer(
                          value: 60,
                          color: Colors.red,
                          width: 0.2,
                          onValueChangeEnd: (value) {},
                          onValueChanging: (value) {},
                          onValueChanged: (value) {},
                          enableDragging: true,
                          cornerStyle: CornerStyle.bothCurve,
                          sizeUnit: GaugeSizeUnit.factor,
                        ),
                      ],
                      annotations: <GaugeAnnotation>[
                        GaugeAnnotation(
                          widget: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '% Kcal taken',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                'per day',
                              ),
                            ],
                          ),
                          positionFactor: 0.13,
                        )
                      ],
                    )
                  ],
                ),
              ),
            )),
        Positioned(
          top: 320,
          left: 0,
          right: 0,
          child: Container(
            height: 500,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: Text(
                    "YOUR HEALTHY MEAL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 32,
                        ),
                        for (int i = 0; i < meals.length; i++)
                          Meals(meals: meals[i]),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(
                      bottom: 60,
                      left: 32,
                      right: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class Meals extends StatelessWidget {
  final Meal meals;
  const Meals({Key key, @required this.meals}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Recipes(
              meal: meals,
            ),
          ));
        },
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 4,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                fit: FlexFit.loose,
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    meals.image,
                    fit: BoxFit.fill,
                    width: 120,
                  ),
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Padding(
                  padding: EdgeInsets.only(left: 1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        meals.timing,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Colors.deepOrange[300],
                        ),
                      ),
                      Text(
                        meals.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.access_time,
                            color: Colors.blueGrey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            meals.timetaken,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.fitness_center,
                            color: Colors.blueGrey,
                            size: 15,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            meals.kcal,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
