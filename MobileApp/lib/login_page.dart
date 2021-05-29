import 'package:flutter/material.dart';
import 'home_page.dart';
import 'showsongs_page/showsongs_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

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
            contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            // hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0),
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
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.blue, Colors.blueAccent]),
      ),
      child: Scaffold(
        // backgroundColor: Colors.green,
        backgroundColor: Colors.transparent,
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
                    SizedBox(
                      height: 100.0,
                      child: Image.asset(
                        "assets/login.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
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
