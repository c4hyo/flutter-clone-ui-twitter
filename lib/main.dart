import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter_tutorial_2/screen/sign_in.dart';
import 'package:flutter_tutorial_2/screen/sign_up.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage();

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Icon(
          EvaIcons.twitter,
          color: Colors.red,
          size: 40,
        ),
      ),
      backgroundColor: Colors.black87,
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Jutaan orang tidak mengeahui peristiwa yang sedang terjadi di dunia saat ini.",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white
                ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                  },
                  child: Text('Buat Akun',style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      persistentFooterButtons: <Widget>[
          Text('sudah punya akun?',style: TextStyle(color: Colors.white),),
          InkWell(
            child: Text('  Masuk Gan',style: TextStyle(color: Colors.red),),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
            },
          )
      ],
    );
  }
}
