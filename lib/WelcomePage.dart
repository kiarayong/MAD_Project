import 'package:flutter/material.dart';
import 'package:my_smart_city/routes.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 650,
              width: 650,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(130),
                    bottomRight: Radius.circular(130)),
                image:
                    DecorationImage(image: AssetImage('images/background.jpg')),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Start a Healthy Life Style Today!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.red[300],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black12,
                      )),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.signup,
                        );
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                          overlayColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.black12,
                      )),
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          Routes.login,
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
