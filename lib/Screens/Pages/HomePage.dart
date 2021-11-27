
import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/pages/LoginPage.dart';
import 'package:cosu_app/Screens/pages/SignUpPage.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background2.png"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.45), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: height * 0.9,
                    ),

                    Center(
                      child: Center(
                        child: IconButton(
                          icon: Image.asset('images/LogoCOSU.png'),
                          //WE NEED TO CHANGE THE COLOR OF THE LOGO
                          iconSize: 200,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreen()
                                )
                            );
                          },
                        )
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
  }
}