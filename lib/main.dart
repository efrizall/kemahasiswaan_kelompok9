import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/Pages/akademik.dart';
import 'package:kemahasiswaan_kelompok9/Pages/dashboard.dart';
import 'package:kemahasiswaan_kelompok9/Pages/kemahasiswaan.dart';
import 'package:kemahasiswaan_kelompok9/Pages/profile.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  int _selectedIndex = 0;
  final _layoutPage = [
    Akademik(),
    Dashboard(),
    Kemahasiswaan(),
    Profile()
  ];

  void _onTabItem(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Student App'),
      ),
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_mosaic),
            // ignore: deprecated_member_use
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            // ignore: deprecated_member_use
            title: Text('Akademik'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            // ignore: deprecated_member_use
            title: Text('Kemahasiswaan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            // ignore: deprecated_member_use
            title: Text('Profile'),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
