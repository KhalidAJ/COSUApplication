
import 'package:cosu_app/Screens/Pages/Profile/ProfileMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'BrowseConstants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
        },
      ),
      title: Center(
        child: Image.asset('images/LogoCOSU.png',
        height: 70,
        width: 70,
    ),
      ),
      flexibleSpace:
      Image(
        image: AssetImage('images/Background2.png'),
        fit: BoxFit.cover,
      ),
      actions: <Widget>[
        IconButton(
        icon: Icon(Icons.search),
          color: Colors.white,
        onPressed: () {},
          ),

        SizedBox(width: kDefaultPaddin / 3)
      ],
    );
  }
}