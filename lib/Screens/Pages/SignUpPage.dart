import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/pages/LoginPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Signupscreen extends StatefulWidget {
  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final storage = new FlutterSecureStorage();

  String _username = '';
  String _phoneNumber = '';
  String _name = '';
  String _password = '';

  String _validation = 'xx';


  signup() async {
    // http.Response response = await http.get(Uri.parse('http://10.0.2.2:5000/api/renter/test'));
    http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:5000/api/customer/register'),
      body: {
        "userName": _username,
        "phoneNumber": _phoneNumber,
        "name": _name,
        "password": _password,
      },
    );
    final responseJson = json.decode(response.body);
    debugPrint(response.statusCode.toString());
    debugPrint(responseJson.toString());
    if (response.statusCode.toString() == '200') {
      await storage.write(key: 'token', value: responseJson['token']);
      debugPrint(await storage.read(key: 'token'));
    }
    if (response.statusCode.toString() == '200') {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreen()));
      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //       builder: (context) => Home(),
      //   )
      // );
    }
    if (response.statusCode.toString() == '402') {
      _validation = responseJson['msg'].toString();
      debugPrint(_validation);
    }
    return response.statusCode.toString();
  }

  List item = ["Customer","Supplier", "Driver", "Business Owner"];
  String valueChosen = "Supplier";

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
                    height: height * 0.09,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          DropdownButton(
                            value: valueChosen,
                            onChanged: (newValue){
                              setState((){
                                valueChosen = newValue as String;
                              });
                            },
                            items: item.map((valueItem){
                              return DropdownMenuItem(
                                  value: valueItem,
                                  child: Text(valueItem)
                              );
                            }).toList(),
                          )
                        ],
                      ),
                      //TYPE OF USER DROPDOWN LIST

                      Container(
                        width: 380,
                        child: TextFormField(
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8D4421), width: 1.0)
                            ),
                            labelText: 'User Name',
                          ),
                          onChanged: (text){
                            setState(() {
                              _username = text;
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8D4421), width: 1.0)
                            ),
                            labelText: 'Phone Number',
                          ),
                          onChanged: (text){
                            setState(() {
                              _phoneNumber = text;
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8D4421), width: 1.0)
                            ),
                            labelText: ' Full Name',
                          ),
                          onChanged: (text){
                            setState(() {
                              _name = text;
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
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xFF8D4421), width: 1)
                            ),
                            labelText: 'Password',
                          ),
                          onChanged: (text){
                            setState(() {
                              _password = text;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        height: height * 0.04,
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
                            onPressed: (){
                              signup();
                            },
                            child: Text('Create Now',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20
                              ),),),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:1.0),
                        child: ButtonTheme(
                          height: 18,
                          child: RaisedButton(color: Color(0xFF643001),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            onPressed: (){
                              Navigator.pop(context);
                            },
                            child: Text('Back To Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        )
    );
  }
}