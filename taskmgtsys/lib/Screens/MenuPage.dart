import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tms/Screens/ContactPage.dart';
import 'package:tms/Screens/HelpPage.dart';
import 'package:tms/Screens/HomePage.dart';
import 'package:tms/Screens/Settings.dart';
import 'package:tms/Screens/profilepage.dart';
import 'package:tms/Screens/password.dart';
import 'package:tms/Screens/MenuPage.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.only(left: he*0.03, right: he*0.03, top: he*0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
            padding: EdgeInsets.only(top: he*0.03, bottom: he*0.03),
            child: Row(
              children: [
                Expanded(child: Container()),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => MyHomepage()),
                    );
                  },
                  child: const Icon(
                    Icons.close_rounded,
                    size: 30,
                  ),),
                SizedBox(width: he*0.01,),
              ],
            )
          ),
            SizedBox(
              height: he*0.13,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ContactUs(),
                ));
              },
              child: Text(
                  'Contact Us',
                  style: TextStyle(
                  fontSize: 30,),),
            ),
            SizedBox(
              height: he*0.03,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => HelpPage(),
                ));},
              child: Text(
                'Help',
                style: TextStyle(
                  fontSize: 30,),),
            ),
            SizedBox(
              height: he*0.03,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => settingsPage()
                    ),
                  );
                },
              child: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 30,),),
            ),
            /*SizedBox(
              height: he*0.03,
            ),
            Text(
              'Quit',
              style: TextStyle(
                fontSize: 30,),),*/
            SizedBox(
              height: he*0.03,
            ),
            GestureDetector(
              onTap: () => SystemNavigator.pop(),
              child: const Text(
                  'Logout',
                  style: TextStyle(
                  fontSize: 30,),),
            )

          ],
        ),
      )
    );
  }
}
