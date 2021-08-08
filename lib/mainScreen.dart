import 'package:flutter/material.dart';
import 'package:taka_app/aboutMe.dart';
import 'package:taka_app/dashboard.dart';
import 'package:taka_app/list.dart';
import 'package:taka_app/live.dart';
import 'package:firebase_auth/firebase_auth.dart';




class MainApp extends StatefulWidget {

  final FirebaseUser user;
  MainApp(this.user);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  final _layoutPage =[
   DashboardScreen(),
   AboutMe(),
   ListScreen(),
   LiveScreen(),
  ];
  void _onTabItem(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(  
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Dashboard")
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            title: Text("About Us")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Vtuber list")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection),
            title: Text("Vtuber lives")
          ),
         
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
