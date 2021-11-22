import 'package:flutter/material.dart';

import '../../../constants.dart';
class MyProfilePage extends StatefulWidget{
  MyProfilePage({Key? key}) : super(key: key);
  @override
  ProfilePage createState() => ProfilePage();
}

class ProfilePage extends State<MyProfilePage>{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Background3.png"),
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
      ),
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Profile Page'),
        backgroundColor: darkBrown,
      ),
    );
  }

}

class NavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountEmail: Text('Khalid@gmail.com'),
            accountName: Text('Khalid Al Ajlan'),
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
        ]
      ),
    );
  }

}
