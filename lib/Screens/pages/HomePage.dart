
import 'package:flutter/material.dart';
import 'package:animated_button/animated_button.dart';
import 'package:cosu_app/Screens/pages/LoginPage.dart';
import 'package:cosu_app/Screens/pages/SignUpPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
        // DECORATE IN HERE //

          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: height * .15,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        'Welcome to COSU',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'Sans',
                            color: Color(0xFF643001)),
                      )
                    ],
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Coffee Supply',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Sans',
                            color: Color(0xFF8D4421)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 35,
                    ),
                    Center(
                      child: Center(
                        child: AnimatedButton(
                            enabled: true,
                            height: 70,
                            width: 150,
                            shadowDegree: ShadowDegree.light,
                            color: Color(0xFF8D4421),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginscreen()));
                            },
                            child: Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontFamily: 'Sans',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800),
                              ),
                            )),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * .6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't Have an account?",
                      style: TextStyle(
                          color: Color(0xFFBD7938),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) => Signupscreen()));
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Color(0xFF8D4421),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}