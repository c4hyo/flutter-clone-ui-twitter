import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class MessegeScreen extends StatefulWidget {
  @override
  _MessegeScreenState createState() => _MessegeScreenState();
}

class _MessegeScreenState extends State<MessegeScreen> {
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
        title: Text('Pesan',style:TextStyle(color:Colors.red,fontSize: 27)),
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
        
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Text('Kirim pesan, dan terima pesan',style:TextStyle(color:Colors.white,fontSize: 20))),
              SizedBox(height: 10,),
              Center(child: Text('Direct Messege adalah percakapan pribadi antara Anda dan orang lain di Twitter. Sebarkan Tweet, media dan lainnya!',style:TextStyle(color: Colors.grey),textAlign: TextAlign.center,),),
              SizedBox(height: 10,),
              Center(
                  child: FlatButton(
                    child: Text('Tulis Pesan',style: TextStyle(color: Colors.white),),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    onPressed: (){
                      print('tulis pesan');
                    },
                  ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('new twit');
        },
        child: Icon(Icons.email),
        backgroundColor: Colors.red,
      ),
    );
  }
}