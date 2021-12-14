import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsRoasters/BrowseRoasters.dart';
import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsTools/BrowseTools.dart';
import 'package:cosu_app/Screens/Pages/LoginPage.dart';
import 'package:cosu_app/Screens/Pages/Profile/CoffeeListPage.dart';
import 'package:cosu_app/Screens/Pages/Profile/ToolsListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MyProfilePage extends StatefulWidget {
  MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();

}


class _MyProfilePageState extends State<MyProfilePage> {
  final storage = new FlutterSecureStorage();

  String _PhoneNumber = '0536699089';
  String _name = 'Khalid Al Ajlan';


  _getProfile() async {
    http.Response response = await http.post(
      Uri.parse('http://10.0.2.2:5000/api/customer/get-profile'),
      body:{
        "phoneNumber":'0505253444',
      },
    );
    Map<String, dynamic> responseJson = json.decode(response.body);
    debugPrint(response.statusCode.toString());
    // debugPrint(responseJson['user']['name'].toString());
    // print(responseJson['user']['phoneNumber'].toString());
    print('ii');

    _PhoneNumber = (responseJson['name'].toString());
    _name = (responseJson['name']).toString();

    debugPrint(_PhoneNumber);
    debugPrint(_name);

    return responseJson['name'].toString();
  }

  @override
  initState() {
    super.initState();
    _getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ProfilePage());
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        flexibleSpace:
        Image(
          image: AssetImage('images/Background1.png'),
          fit: BoxFit.cover,
        ),
        title: Image.asset('images/LogoCOSUDark.png',
          height: 70,
          width: 70,
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background2.png"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 2.5,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Center(
                  child: Text(
                    "The Menu",
                    style: TextStyle(
                        color: Color(0xFFF0D4AB),
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: Center(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20.0,
                        children: <Widget>[
                          Center(
                            child: SizedBox(
                              width: 700.0,
                              height: 160.0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoffeeShopListPage()),
                                  );
                                },
                                child: Card(
                                  color: Color(0xFFF0D4AB),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child : Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/Background3.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.dstATop),
                                      ),
                                    ),
                                    child : Center(child: Text("COFFEE SHOPS",
                                      style: TextStyle(
                                          color: Color(0xFF643001),
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20.0),
                                    )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 700.0,
                              height: 160.0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CoffeeShopListPage()),
                                  );
                                },
                                child: Card(
                                  color: Color(0xFFF0D4AB),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child : Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/Background3.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.dstATop),
                                      ),
                                    ),
                                    child : Center(child: Text("ROASTERS",
                                      style: TextStyle(
                                          color: Color(0xFF643001),
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20.0),
                                    )
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: 700.0,
                              height: 160.0,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ToolsListPage()),
                                  );
                                },
                                child: Card(
                                  color: Color(0xFFF0D4AB),
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child : Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(image: AssetImage("images/Background3.png"),
                                        fit: BoxFit.cover,
                                        colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.dstATop),
                                      ),
                                    ),
                                    child : Center(child: Text("TOOLS",
                                      style: TextStyle(
                                          color: Color(0xFF643001),
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                          fontSize: 20.0),
                                    )
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {

  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    //  String _name ='xx';
    // _MyProfilePageState()._getProfile()..then((result) {
    //    if (result is String)
    //         _name = result.toString();
    //     else debugPrint('eror'); //use toString to convert as String
    // });
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountEmail: Text("Khalid Al Ajlan"), // USE JSON
          accountName: Text(_MyProfilePageState()._PhoneNumber), // USE JSON
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Background2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Favorite'),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Orders'),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => Loginscreen()));
          },
        )
      ]),
    );
  }
}
