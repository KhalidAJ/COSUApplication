
import 'package:animated_button/animated_button.dart';
import 'package:cosu_app/Screens/Pages/Profile/ProfileMenu.dart';
import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/pages/SignUpPage.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final storage = new FlutterSecureStorage();

  String _PhoneNumber = '';
  String _Password = '';

  login() async {
    // http.Response response = await http.get(Uri.parse('http://10.0.2.2:5000/api/renter/test'));
    http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:5000/api/customer/login'),
      body:{
        "phoneNumber":_PhoneNumber,
        "password":_Password,
      },
    );
    final responseJson = json.decode(response.body);
    // if (response.statusCode.toString() == '200'){
    //   await storage.delete(key: 'token');
    //   await storage.write(key: 'token', value: responseJson['token']);
    //   // the_token = await storage.read(key:'token');
    //   debugPrint(await storage.read(key:'token'));
    //
    // }
    debugPrint(response.statusCode.toString());
    debugPrint(responseJson.toString());
    if(response.statusCode.toString() == '200'){
      await storage.delete(key: 'token');
      await storage.write(key: 'token', value: responseJson['token']);
      // the_token = await storage.read(key:'token');
      debugPrint(await storage.read(key:'token'));

      Navigator.of(context).push(
          MaterialPageRoute(
              builder: (context) => MyProfilePage()
          )
      );
    }
    return response.statusCode.toString();
  }


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                height: height * 0.09,
              ),
              Image.asset(
                  'images/LogoCOSU.png',
                  height: 100,
                  width: 100),
              SizedBox(
                height: height * .06,
              ),
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.7),
                            fontSize: 50,
                            fontFamily: 'Montserrat'),
                      )
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
                  SizedBox(
                    height: height * .04,
                  ),
                ],
              ),

              Container(
                width: 380,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                    ),
                    labelText: 'Phone Number',
                  ),
                  onChanged: (text){
                    setState(() {
                      _PhoneNumber = text;
                    });
                  },
                ),
              ),
              SizedBox(
                height: height * 0.04,
              ),
              Container(
                width: 380,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(

                    ),
                    labelText: 'Password',
                  ),

                  onChanged: (text){
                    setState(() {
                      _Password = text;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  AnimatedButton(
                      enabled: true,
                      height: 50,
                      width: 130,
                      color: Color(0xFF8D4421),
                      onPressed: (){
                        login();
                        Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => MyProfilePage()
                            )
                        );
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w800),
                      )),
                ],
              ),
              SizedBox(
                height: height * .15,
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
                          color: Color(0xFFBD7938),
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
    );
  }
}

class customtextfield extends StatelessWidget {
  bool issecured;
  String hint;


  customtextfield({required this.hint, required this.issecured});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextField(
        obscureText: issecured,
        decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.black12,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: Colors.transparent))),
        style: TextStyle(
            color: Colors.black.withOpacity(.3),
            fontWeight: FontWeight.w600,
            fontSize: 18),

      ),
    );
  }
}