import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_tutorial_2/screen/account/feed_screen.dart';
import 'package:flutter_tutorial_2/screen/account/messege_screen.dart';
import 'package:flutter_tutorial_2/screen/account/notif_screen.dart';
import 'package:flutter_tutorial_2/screen/account/search_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  PageController _pageController;
  void initState(){
    super.initState();
    _pageController = PageController();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(EvaIcons.homeOutline, size: 30),
            Icon(EvaIcons.searchOutline, size: 30),
            Icon(EvaIcons.bellOutline, size: 30),
            Icon(EvaIcons.emailOutline, size: 30),
          ],
          color: Colors.red,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.red,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
            _pageController.animateToPage(index,duration:Duration(milliseconds: 200),curve: Curves.easeIn);
          },
        ),
        body: PageView(
          controller: _pageController,
          children: <Widget>[
            FeedScreen(),
            SearchScreen(),
            NotifScreen(),
            MessegeScreen(),
          ],
          onPageChanged: (int index){
            setState(() {
              _page = index;
            });
          },
        )
    );
  }
}