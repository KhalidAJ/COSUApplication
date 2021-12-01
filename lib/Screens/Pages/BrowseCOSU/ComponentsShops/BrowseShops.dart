import 'package:flutter/material.dart';
import '../BrowseConstants.dart';
import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsShops/body.dart';

class BrowseShops extends StatelessWidget {
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

      title: Center(
        child: Image.asset('images/LogoCOSUDark.png',
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