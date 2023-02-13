import 'package:flutter/material.dart';
import 'package:my_smart_city/routes.dart';
import 'package:my_smart_city/user.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: 300,
                  child: Image.asset('images/RegisterLogo.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Welcome To HomeWorkout! ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.orange[500],
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
                        'Please Register Your Account.',
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
                        height: 70,
                        child: TextFormField(
                          controller: usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            hintText: 'Please create your username',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            suffix: Icon(
                              Icons.lock_sharp,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your username';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 260,
                        height: 70,
                        child: TextFormField(
                          controller: pwdController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Please create your password',
                            hintStyle: TextStyle(
                              color: Colors.white54,
                            ),
                            suffix: Icon(
                              Icons.lock_sharp,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            // Check if the entered email has the right format
                            if (value.length < 7) {
                              return 'Must be more than 7 charater';
                            }
                            // Return null if the entered email is valid
                            return null;
                          },
                        ),
                      ),
                      RaisedButton(
                        color: Colors.orange[50],
                        onPressed: () {
                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            Navigator.pushNamed(context, Routes.login,
                                arguments: User(
                                    username:
                                        usernameController.text.toString(),
                                    pwd: pwdController.text.toString()));
                          }
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text(
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.login,
                    );
                  },
                  child: Text(
                    "Log In Here",
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
      ),
    );
  }
}
