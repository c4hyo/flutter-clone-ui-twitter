import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // leading: Icon(EvaIcons.people),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(EvaIcons.settings2Outline,color: Colors.red,),
            onPressed: (){
              print('pengaturan');
            },
          )
        ],
        centerTitle: true,
        title: TextField(
          style: TextStyle(color: Colors.red),
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.red),
            fillColor: Colors.blue
          ),
        ),
        leading: Builder(
          builder: (context)=>IconButton(
            icon: Icon(EvaIcons.twitter,color: Colors.red,),
            onPressed: ()=>Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black
        ),
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Cahyo',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                accountEmail: Text('mdcnugroho@gmail.com'),
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                arrowColor: Colors.white,
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.personOutline,
                      color:Colors.white
                    ),
                    SizedBox(width: 20,),
                    Text('Profil',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.listOutline,
                      color:Colors.white
                    ),
                    SizedBox(width: 20,),
                    Text('Daftar',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.messageSquareOutline,
                      color:Colors.white
                    ),
                    SizedBox(width: 20,),
                    Text('Topik',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.pinOutline,
                      color:Colors.white
                    ),
                    SizedBox(width: 20,),
                    Text('Markah',style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      EvaIcons.flashOutline,
                      color:Colors.white
                    ),
                    SizedBox(width: 20,),
                    Text('Moment',style: TextStyle(color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Container(
        
        child: Column(
          children: <Widget>[
            Text('Search Gan',style:TextStyle(color:Colors.white)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('new twit');
        },
        child: Icon(Icons.add_comment),
        backgroundColor: Colors.red,
      ),
    );
  }
}