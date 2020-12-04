import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/Pages/beastudi.dart';
import 'package:kemahasiswaan_kelompok9/Pages/pengumuman.dart';

class Kemahasiswaan extends StatefulWidget {
  @override
  _KemahasiswaanState createState() => _KemahasiswaanState();
}

class _KemahasiswaanState extends State<Kemahasiswaan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0, right: 20.0, left: 20.0),
      child: GridView.count(
        crossAxisCount: 3,
        children: <Widget> [
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pengumuman()));
              },
              splashColor: Colors.white,
              child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.announcement_outlined, size: 55, color: Colors.white,),
                      Text ('Pengumuman', style: new TextStyle(fontSize: 17.0, color: Colors.white),)
                    ],
                  )
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Beastudi()));
              },
              splashColor: Colors.white,
              child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.school_outlined, size: 60, color: Colors.white,),
                      Text ('Beastudi', style: new TextStyle(fontSize: 17.0, color: Colors.white),)
                    ],
                  )
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: (){},
              splashColor: Colors.white,
              child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.assignment_turned_in_outlined, size: 60, color: Colors.white,),
                      Text ('Lomba', style: new TextStyle(fontSize: 17.0, color: Colors.white),)
                    ],
                  )
              ),
            ),
          ),
          Card(
            color: Colors.blue,
            child: InkWell(
              onTap: (){},
              splashColor: Colors.white,
              child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.people, size: 70, color: Colors.white,),
                      Text ('Organisasi', style: new TextStyle(fontSize: 17.0, color: Colors.white),)
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}