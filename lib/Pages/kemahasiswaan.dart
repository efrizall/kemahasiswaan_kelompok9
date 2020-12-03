import 'package:flutter/material.dart';

class Kemahasiswaan extends StatefulWidget{
  @override
  _KemahasiswaanState createState() => _KemahasiswaanState();
}

class _KemahasiswaanState extends State<Kemahasiswaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          MainMenu(),
        ],
      ),
    );
  }
}

class MainMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      children: mainMenuItem,
    );
  }
}
List<MainMenuItem> mainMenuItem = [
  MainMenuItem(
    title: "Pengumuman",
    icon: Icons.book,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MainMenuItem(
    title: "Beastudi",
    icon: Icons.access_time,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MainMenuItem(
    title: "Lomba",
    icon: Icons.directions_run,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
  MainMenuItem(
    title: "Organisasi",
    icon: Icons.people,
    colorBox: Colors.blue,
    iconColor: Colors.white,
  ),
];

class MainMenuItem extends StatelessWidget{
  MainMenuItem({this.title, this.icon, this.colorBox, this.iconColor});
  final String title;
  final IconData icon;
  final Color colorBox, iconColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                color: colorBox,
                shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Icon(
              icon, color: iconColor, size: 50.0
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(title, style: TextStyle(fontSize: 15.0),),
        ),
      ],
    );
  }
}
