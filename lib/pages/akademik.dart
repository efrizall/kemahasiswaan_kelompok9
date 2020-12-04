import 'package:flutter/material.dart';

class Akademik extends StatefulWidget {
  @override
  _AkademikState createState() => _AkademikState();
}

class _AkademikState extends State<Akademik> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(child: Text('Akademik',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25), ),),
        )
    );
  }
}
