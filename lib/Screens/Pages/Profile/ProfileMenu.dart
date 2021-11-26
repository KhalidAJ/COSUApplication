import 'package:cosu_app/Screens/Pages/LoginPage.dart';
import 'package:cosu_app/constants.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  MyProfilePage({Key? key}) : super(key: key);
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
        leading: IconButton(
          icon: Icon(Icons.menu_open),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        flexibleSpace:
        Image(
          image: AssetImage('images/Background2.png'),
          fit: BoxFit.cover,
        ),
        title: Image.asset('images/LogoCOSU.png',
            height: 70,
            width: 70,
        ),

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background3.png"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Welcome To COSU!",
                    style: TextStyle(
                        color: Color(0xFF3A1C00),
                        fontFamily: 'RobotoMono',
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                        child: Wrap(
                      spacing: 20,
                      runSpacing: 20.0,
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            width: 160.0,
                            height: 160.0,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Loginscreen()),
                                );
                              },
                              child: Card(
                                color: Color(0xFFF0D4AB),
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(
                                        "assets/note.png",
                                        width: 64.0,
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Coffee Roasters",
                                        style: TextStyle(
                                            color: Color(0xFF643001),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0),
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreen()),
                              );
                            },
                            child: Card(
                              color: Color(0xFFF0D4AB),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/note.png",
                                          width: 64.0,
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Coffee Roasters",
                                          style: TextStyle(
                                              color: Color(0xFF643001),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  )),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 160.0,
                          height: 160.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loginscreen()),
                              );
                            },
                            child: Card(
                              color: Color(0xFFF0D4AB),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/note.png",
                                          width: 64.0,
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Coffee Roasters",
                                          style: TextStyle(
                                              color: Color(0xFF643001),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))),
              ],
            ),
          ),
        ),
    );
  }
}

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountEmail: Text('Khalid@gmail.com'), // USE JSON
          accountName: Text('Khalid Al Ajlan'), // USE JSON
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
        )
      ]),
    );
  }
}
