import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsRoasters/BrowseRoasters.dart';
import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsTools/BrowseTools.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new ToolsListPage(),
    );
  }
}

class ToolsListPage extends StatefulWidget {
  ToolsListPage({Key? key}) : super(key: key);

  @override
  _ToolsListPageState createState() => _ToolsListPageState();
}

class _ToolsListPageState extends State<ToolsListPage> {
  late List shops;

  @override
  void initState() {
    shops = getToolShops();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ListTile makeListTile(ToolShops shop) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      leading: Container(
        padding: EdgeInsets.only(right: 8.0),
        decoration: new BoxDecoration(
            border: new Border(
                right: new BorderSide(width: 1.0, color: Colors.black54))),
        child: ImageIcon(
          AssetImage("images/LogoCOSU.png"),
        ),
      ),
      title: Text(
        shop.ShopName,
        style: TextStyle(color: Color(0xFF643001), fontWeight: FontWeight.bold),
      ),
      // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

      subtitle: Row(
        children: <Widget>[

          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(shop.ShopAvailability,
                    style: TextStyle(color: Color(0xFF643001)))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Color(0xFF643001), size: 30.0),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BrowseTools()),
        );
      },
    );

    Card makeCard(ToolShops shop) => Card(
      elevation: 0,
      margin: new EdgeInsets.symmetric(),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Background2.png"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.dstATop)
            ),
            color: Colors.transparent),
        child: makeListTile(shop),
      ),
    );

    final makeBody = Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Background2.png"),
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: shops.length,
        itemBuilder: (BuildContext context, int index) {
          return makeCard(shops[index]);
        },
      ),
    );


    return Scaffold(
      appBar: AppBar(
        elevation: 0,

        title: Center(
          child: Image.asset('images/LogoCOSUDark.png',
            height: 70,
            width: 70,
          ),
        ),
        flexibleSpace:
        Image(
          image: AssetImage('images/Background1.png'),
          fit: BoxFit.cover,
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back),
          onPressed:() => Navigator.pop(context, false),
        ),
      ),
      body: makeBody,
    );
  }
}

List getToolShops() {
  return [
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Open",
        Area: "Nakheel"
    ),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Open",
        Area: "Aqeek"
    ),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Open",
        Area: "Malqa"

    ),    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Closed",
        Area: "Nakheel"

    ),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Closed",
        Area:
        ""),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Closed",
        Area:
        ""),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Closed",
        Area: ""
    ),
    ToolShops(
        ShopName: "TOOLSHOP",
        ShopAvailability: "Closed",
        Area: " "
    ),
    ToolShops(
      ShopName: "TOOLSHOP",
      ShopAvailability: "Closed",
      Area: "Nakheel",
    )
  ];
}

class ToolShops {
  String ShopName;
  String ShopAvailability;
  String Area;

  ToolShops(
      {required this.ShopName, required this.ShopAvailability, required this.Area});
}