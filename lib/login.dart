import 'package:flutter/material.dart';
import 'package:my_smart_city/routes.dart';
import 'package:my_smart_city/user.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController lusernameController = TextEditingController();
  TextEditingController lpwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[50],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image(
            width: 24,
            color: Colors.orange[300],
            image: AssetImage('icons/backarrow.png'),
          ),
        ),
      ),
      backgroundColor: Colors.orange[50],
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 250,
                width: 300,
                child: Image.asset('images/LoginLogo.png'),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Home Workout',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 350,
                height: 350,
                decoration: BoxDecoration(
                  color: Colors.orange[300],
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Keep Healthy',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Welcome Back! Please Login.',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[200],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        controller: lusernameController,
                        decoration: InputDecoration(
                            hintText: 'Please enter your username',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            suffix: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 260,
                      height: 60,
                      child: TextField(
                        controller: lpwdController,
                        decoration: InputDecoration(
                          hintText: 'Please enter your password',
                          hintStyle: TextStyle(
                            color: Colors.white54,
                          ),
                          suffix: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      color: Colors.orange[50],
                      child: Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                      onPressed: () {
                        if (lusernameController.text.toString() ==
                                user.username &&
                            lpwdController.text.toString() == user.pwd) {
                          //initialize the data
                          Navigator.pushNamed(context, Routes.homepage,
                              arguments: LUser(
                                  lusername:
                                      lusernameController.text.toString(),
                                  lpwd: lpwdController.text.toString()));
                        } else {
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('AlertDialog Title'),
                              content:
                                  const Text('Incorrect Username or Password'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              const Text(
                "Not a member?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    Routes.signup,
                  );
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
