import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorial_2/screen/sign_up.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: BackButton(
          color: Colors.red,
        ),
        centerTitle: true,
        title: Icon(
          EvaIcons.twitter,
          color: Colors.red,
          size: 40,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('Daftar',style: TextStyle(color: Colors.red,fontSize: 20),),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
            },
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Form(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('Masuk ke Twitter.' ,style: TextStyle(fontSize: 20,color: Colors.white),),
                    SizedBox(height: 30,),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.red
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.red)
                        )
                      ),
                    ),
                    SizedBox(height: 30,),
                    TextFormField(
                      style: TextStyle(
                        color: Colors.red
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.red)
                        )
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: Text('Lanjut',style: TextStyle(color: Colors.white),),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)
                      ),
                      onPressed: (){
                    print('Lanjut gan');
                      },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}