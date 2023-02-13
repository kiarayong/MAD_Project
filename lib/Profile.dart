import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _pressed = false;
  bool isOscurePwd = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        backgroundColor: Colors.orange[50],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image(
            width: 24,
            color: Colors.deepOrange[800],
            image: AssetImage('icons/backarrow.png'),
          ),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 4, color: Colors.deepOrange[800]),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: _pressed
                            ? AssetImage('images/profilepic1.png')
                            : AssetImage('images/profilepic2.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 4, color: Colors.white),
                        color: Colors.deepOrange[800],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.white,
                        onPressed: () => setState(() {
                          _pressed = !_pressed;
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            buildTextField("Full Name", "Kiara", false),
            buildTextField("Email", "kiara@yahoo.com", false),
            buildTextField("Password", "*********", true),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Save',
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange[800],
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, String placeholder, bool pwd) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: TextField(
        obscureText: pwd ? isOscurePwd : false,
        decoration: InputDecoration(
            suffixIcon: pwd
                ? IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    onPressed: () {
                      setState(() {
                        isOscurePwd = !isOscurePwd;
                      });
                    })
                : null,
            hintText: placeholder,
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            labelText: label,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            )),
      ),
    );
  }
}
