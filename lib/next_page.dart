import 'package:authentication_firebase/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
  String _message = "";
  void _backToSignInPage() async {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('asad'),
        actions: [
          IconButton(
              onPressed: _backToSignInPage, icon: Icon(Icons.logout_outlined))
        ],
      ),
      drawer:const Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
           // ListTile(
             // title: Text('signout'),
            //   leading: IconButton(
            //       onPressed: _backToSignInPage, icon: Icon(Icons.logout)),
            // )
          ],
        ),
      ),
      body: Center(
          child: Container(
        height: 200,
        width: 500,
        color: Colors.grey,
      )),
    );
  }
}
