import 'package:flutter/material.dart';
import 'package:womenwiin/bottomNav.dart';
// import 'package:wordpress_api/wordpress_api';
// import 'package:wordpress_client/wordpress_client.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("WomenWiin"),backgroundColor: Colors.teal[900],
       actions: [
        // Title(color: Colors.black, child: Text("WomenWiin"))
      ],),
      drawer: buildDrawer(),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: botomNav()),
     
      // bottomNavigationBar: BottomNavigationBar(items: [],backgroundColor: Colors.teal,),
    );
  }
}

Widget buildDrawer() {
  return Drawer(
    child: Container(
      padding: EdgeInsets.all(20),
      color: Colors.teal[100],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(height: 10),
            Center(
              child: Container(

                // width: 100,
                height: 200,
                width: 200,
                margin: EdgeInsets.symmetric(vertical: 30),
                child: ClipRRect(
                   borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    ('assets/photo.jpeg'),
                    fit: BoxFit.fill,
                    colorBlendMode: BlendMode.color,
                  ),
                ),
              ),
            ),
            
            Text("Women Wiin",
                style: TextStyle(fontSize:25,
                    color: Colors.teal[900], fontWeight: FontWeight.bold)),
            Container(height: 5),
            Divider(color: Colors.white),
            buildMenuDrawer("Latest Update", () {}),
            buildMenuDrawer("Membership", () {}),
            buildMenuDrawer("Volunteer Join Today", () {}),
            buildMenuDrawer("Terms and Condiition", () {}),
            buildMenuDrawer("Privacy Policy", () {}),
            buildMenuDrawer("Donate", () {}),
            Container(height: 120),
            Text("FITIG Association",
                style: TextStyle(
                    color: Colors.teal[900], fontWeight: FontWeight.bold)),
            Text("copywrite @Fitig Association",
                style: TextStyle(
                    color: Colors.teal[900], fontWeight: FontWeight.w300)),

          ],
        ),
      ),
    ),
  );
}

Widget buildMenuDrawer(String title, Function onTap) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      highlightColor: Colors.black.withOpacity(0.5),
      hoverColor: Colors.black.withOpacity(0.5),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        child: Text(title,
            style: TextStyle(color: Colors.teal[700], fontWeight: FontWeight.w500)),
      ),
    ),
  );
}
