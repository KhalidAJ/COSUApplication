import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsRoasters/BrowseRoasters.dart';
import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsTools/BrowseTools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../LoginPage.dart';
import 'CoffeeListPage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyProfilePage extends StatelessWidget {
  MyProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: DriverPage());
  }
}

class DriverPage extends StatelessWidget {
  const DriverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();

    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        flexibleSpace: Image(
          image: AssetImage('images/Background1.png'),
          fit: BoxFit.cover,
        ),
        title: Image.asset(
          'images/LogoCOSUDark.png',
          height: 70,
          width: 70,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Background2.png"),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 5.5,
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
                    "Driver's Orders",
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
                          height: 300.0,
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
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/Background3.png"),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.25),
                                        BlendMode.dstATop),
                                  ),
                                ),
                                child: Container(
                                  child: CarouselSlider(
                                    items: [1, 2, 3, 4, 5].map((i) {
                                      return Builder(
                                        builder: (BuildContext context) {
                                          return Container(
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 5.0),
                                              decoration: BoxDecoration(
                                                  color: Color(0xFFF0D4AB)),
                                              child: Center(
                                                  child: Text(
                                                'Order $i',
                                                style:
                                                    TextStyle(fontSize: 16.0),
                                              )));
                                        },
                                      );
                                    }).toList(),
                                    carouselController:
                                        buttonCarouselController,
                                    options: CarouselOptions(
                                      autoPlay: false,
                                      enlargeCenterPage: true,
                                      viewportFraction: 0.9,
                                      aspectRatio: 2.0,
                                      initialPage: 2,
                                    ),
                                  ),
                                ),
                                // --------- ADD A LIST ---------//
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 200.0,
                          height: 80.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoffeeShopListPage()),
                              );
                            },
                            child: Card(
                              color: Color(0xFF4FB100),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/Background3.png"),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.25),
                                        BlendMode.dstATop),
                                  ),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "Accept Order",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF643001),
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                // --------- ADD A LIST ---------//
                              ),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: SizedBox(
                          width: 200.0,
                          height: 80.0,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoffeeShopListPage()),
                              );
                            },
                            child: Card(
                              color: Color(0xFFC60000),
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("images/Background3.png"),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.25),
                                        BlendMode.dstATop),
                                  ),
                                ),
                                child: Container(
                                  child: Center(
                                    child: Text(
                                      "Decline Order",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF643001),
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                                // --------- ADD A LIST ---------//
                              ),
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
          accountEmail: Text(''), // USE JSON
          accountName: Text(''), // USE JSON
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/Background2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.contacts),
          title: Text('Contact Us'),
          onTap: () {
            SnackBar(content: Text('0555253444'));
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Logout'),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (ctx) => Loginscreen()));
          },
        ),
      ]),
    );
  }
}
