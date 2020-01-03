import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Buat akun', style: TextStyle(color: Colors.white,fontSize: 30),),
              Form(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(
                        color: Colors.red
                      ),
                      decoration: InputDecoration(
                        labelText: 'Nama',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(color: Colors.red)
                        )
                      ),
                    ),
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