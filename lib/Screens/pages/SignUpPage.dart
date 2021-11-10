import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/pages/LoginPage.dart';


class Signupscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: height * 0.1,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Welcome To COSU',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.7),
                            fontSize: 37,
                            fontFamily: 'Montserrat'),
                      ),
                    ],
              ),
              SizedBox(
                height: height * .01,
              ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 8,
                        width: width * .5,
                        decoration: BoxDecoration(
                            color: Color(0xFF8D4421),
                            borderRadius: BorderRadius.circular(5)),
                      )
                    ],
                  ),
                  SizedBox(
                height: height * .18,
              ),
              customtextfield(
                hint: 'Enter your name',
                issecured: false,
              ),customtextfield(
                hint: 'Enter your email',
                issecured: false,
              ),customtextfield(
                hint: 'Enter your password',
                issecured: true,
              ),customtextfield(
                hint: 'Confirm password',
                issecured: true,
              ),
              SizedBox(
                height: height*.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: ButtonTheme(
                  minWidth: width,
                  height: 55,
                  child: RaisedButton(color: Color(0xFF8D4421),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    onPressed: (){},
                    child: Text('Create Now',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),),),
                ),
              ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:10.0),
                    child: Column(
                      children: [
                        ButtonTheme(
                          minWidth: 50,
                          height: 34,
                          child: RaisedButton(color: Color(0xFF8D4421),

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onPressed: (){},
                            child: Text('Go to Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
            ],
          ),
        ]),
      ),
    )
    );
  }
}