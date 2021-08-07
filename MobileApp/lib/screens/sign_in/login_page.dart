// import 'dart:html';

import 'package:MobileApp/constants/constants.dart';
import 'package:MobileApp/screens/widgets/rect_button.dart';
import 'package:MobileApp/screens/widgets/rect_input_field.dart';
import 'package:MobileApp/screens/widgets/tapped_button.dart';
import 'package:flutter/material.dart';
// import '../home_page.dart';
import '../showsongs_page/showsongs_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool signInButtonPress = false;

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 15.0);

  void _signInButtonPress() {
    print("setting state");
    setState(() {
        signInButtonPress = false;
    });
      Navigator.of(context).pushNamed(ShowSongsPage.tag);
  }

  @override
  Widget build(BuildContext context) {
    final emailField = Container(
      width: 250.0,
      height: 30.0,
      child: TextFormField(
        obscureText: false,
        controller: _emailController,
        style: style,
        decoration: InputDecoration(
            labelStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            // hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            labelText: 'Email'),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password Required(የይለፍ ቃል ያስፈልጋል)';
          }

          return null;
        },
      ),
    );

    final passwordField = Container(
      width: 250.0,
      height: 30,
      child: TextField(
        obscureText: true,
        controller: _passwordController,
        style: style,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            // hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            labelText: "Password"),
      ),
    );

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.black,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          // if (!_formKey.currentState.validate()) {
          //   return;
          // }
          Navigator.of(context).pushNamed(ShowSongsPage.tag);
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final register = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? "),
        InkWell(
          child: Text(
            "Sign up",
            style: TextStyle(color: Colors.blue),
          ),
          onTap: () {},
        )
      ],
    );

    return Container(
      // decoration: BoxDecoration(
      //   gradient: LinearGradient(
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //       colors: [lightPrimary, darkPrimary]),
      // ),
      child: Scaffold(
        // backgroundColor: Colors.green,
        backgroundColor: Colors.grey[850],
        // backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            // color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(
                    //   height: 100.0,
                    //   child: Image.asset(
                    //     "assets/login.png",
                    //     fit: BoxFit.contain,
                    //   ),
                    // ),
                    Text("SIGN IN",style: TextStyle(fontSize: 50)),
                    SizedBox(height: 45.0),
                    // emailField,
                    RectangulaInputField(
                      hintText: 'Email',
                      icon: Icons.email_rounded,
                      obscureText: false,
                    ),
                    SizedBox(height: 25.0),
                    // passwordField,
                    RectangulaInputField(
                      hintText: 'Paassword',
                      icon: Icons.lock,
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    // loginButon,
                    GestureDetector(
                      onTap: _signInButtonPress,
                      child: signInButtonPress
                          ? ButtonTapped(text: 'Sign In')
                          : RectangularButton(text: 'Sign In'),
                    ),
                    SizedBox(height: 25.0),
                    register,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
