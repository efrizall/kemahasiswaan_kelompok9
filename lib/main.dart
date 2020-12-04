import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/pages/akademik.dart';
import 'package:kemahasiswaan_kelompok9/pages/dashboard.dart';
import 'package:kemahasiswaan_kelompok9/pages/kemahasiswaan.dart';
import 'package:kemahasiswaan_kelompok9/pages/profil.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Awal(),
    );
  }
}

class Awal extends StatefulWidget{
  Awal({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AwalState createState() => _AwalState();
}

class _AwalState extends State<Awal>{

  int _selectedIndex = 0;
  final _layoutPage = [
    Dashboard(),
    Akademik(),
    Kemahasiswaan(),
    Profil()
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
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem (
              icon : Icon(Icons.dashboard),
              // ignore: deprecated_member_use
              title: Text('Dashboard')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.school),
              // ignore: deprecated_member_use
              title: Text('Akademik')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              // ignore: deprecated_member_use
              title: Text('Kemahasiswaan')
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              // ignore: deprecated_member_use
              title: Text('Profil')
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
      home: Home(),
    );
  }
}