import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/pages/LoginPage.dart';


class Signupscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Background3.png"),
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: height * 0.04,
                  ),

                  Column(
                    children: <Widget>[

                      Image.asset(
                        'images/LogoCOSU.png',
                        height: 100,
                        width: 100,),
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
                      //TYPE OF USER DROPDOWN LIST
                      customtextfield(
                        hint: 'Phone Number',
                        issecured: false,
                      ),customtextfield(
                        hint: 'Email',
                        issecured: false,
                      ),customtextfield(
                        hint: 'First Name',
                        issecured: true,
                      ),customtextfield(
                        hint: 'Last Name',
                        issecured: true,
                      ),
                      customtextfield(
                        hint: 'Password',
                        issecured: true,
                      ),
                      customtextfield(
                        hint: 'Confirm Password',
                        issecured: true,
                      ),
                      SizedBox(
                        height: height*.02,
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
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10.0),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: height * 0.04,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ]),
          ),
        )
    );
  }
}