import 'package:flutter/material.dart';
import 'package:food_app/home_page.dart';
import 'package:food_app/like_page.dart';
import 'package:food_app/personal_page.dart';
import 'package:food_app/save_page.dart';
import 'package:food_app/starter_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   List pages=[
    DetailPage(),
    FavoritePage(),
    InBoxPage(),
    AccountPage(),
   ];
    int currentIndex=0;
    void onTap(int index){
      setState(() {
        currentIndex=index;
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:pages[currentIndex] ,
       bottomNavigationBar: BottomNavigationBar(

         unselectedFontSize: 0,
         selectedFontSize: 0,
         backgroundColor: Colors.white,
           currentIndex: currentIndex,
         selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.brown , fontSize:10),
          unselectedLabelStyle: TextStyle(color: Colors.grey,fontSize:10),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          elevation: 0,
          onTap: onTap,

          items: [
            BottomNavigationBarItem(label:"Home", icon: Icon(Icons.apps)),
             BottomNavigationBarItem(label:"like", icon: Icon(Icons.favorite)),
              BottomNavigationBarItem(label:"InBox", icon: Icon(Icons.screenshot_monitor)),
             BottomNavigationBarItem(label:"Account", icon: Icon(Icons.person)),
          ],
       ),
      );
  }
}