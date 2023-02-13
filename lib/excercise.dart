import 'package:flutter/material.dart';

class Exercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              floating: false,
              title: Text(
                'Today Exercise',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.orange[200],
              toolbarHeight: 70.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/workout.webp',
                  colorBlendMode: BlendMode.darken,
                  color: Color(0x80000000),
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.orange[100],
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                      hintText: "Search a workout for today.....",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.orange[800],
                      ),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(100),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Top Recommended",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    workoutlist('images/jumprope.jpg', 'Jump Rope Skips', 30),
                    workoutlist('images/SingleArm.jpg', 'Single-Arm Press', 10),
                    workoutlist('images/ToeTaps.jpg', 'Toe Taps', 15),
                    workoutlist('images/Burpees.jpg', 'Burpees', 10),
                    workoutlist('images/HighKnees.jpg', 'High Knees', 15),
                  ],
                ))),
      ),
    );
  }
}

Widget workoutlist(String pic, String title, int timetaken) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(pic),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Color(0x80000000),
          BlendMode.darken,
        ),
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${timetaken}Minutes / Day",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ),
  );
}
