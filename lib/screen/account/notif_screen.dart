import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class NotifScreen extends StatefulWidget {
  @override
  _NotifScreenState createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  EvaIcons.settings2Outline,
                  color: Colors.red,
                ),
                onPressed: () {
                  print('pengaturan');
                },
              )
            ],
            bottom: TabBar(
              indicatorColor: Colors.red,
              tabs: <Widget>[Text('Semua'), Text('Sebutan')],
            ),
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('Notifikasi',
                style: TextStyle(color: Colors.red, fontSize: 27)),
            leading: Builder(
              builder: (context) => IconButton(
                icon: Icon(
                  EvaIcons.twitter,
                  color: Colors.red,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),
          drawer: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.black),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    accountName: Text(
                      'Cahyo',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text('mdcnugroho@gmail.com'),
                    decoration: BoxDecoration(color: Colors.red),
                    arrowColor: Colors.white,
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(EvaIcons.personOutline, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Profil',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(EvaIcons.listOutline, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Daftar',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(EvaIcons.messageSquareOutline,
                            color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Topik',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(EvaIcons.pinOutline, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Markah',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(EvaIcons.flashOutline, color: Colors.white),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Moment',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: TabBarView(
              children: <Widget>[
                Text(
                  'Halaman 1',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Halaman 2',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('new twit');
            },
            child: Icon(Icons.add_comment),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
