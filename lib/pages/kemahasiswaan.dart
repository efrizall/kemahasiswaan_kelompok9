import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/pages/pengumuman.dart';

class Kemahasiswaan extends StatefulWidget {
  @override
  _KemahasiswaanState createState() => _KemahasiswaanState();
}

class _KemahasiswaanState extends State<Kemahasiswaan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(60.0),
      child: GridView.count(
        crossAxisCount: 2,
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
                      Icon(Icons.announcement_outlined, size: 55,),
                      Text ('Pengumuman', style: new TextStyle(fontSize: 17.0),)
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
                      Icon(Icons.school_outlined, size: 60,),
                      Text ('Beastudi', style: new TextStyle(fontSize: 17.0),)
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
                      Icon(Icons.assignment_turned_in_outlined, size: 60,),
                      Text ('Lomba', style: new TextStyle(fontSize: 17.0),)
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
                      Icon(Icons.amp_stories_outlined, size: 70,),
                      Text ('Organisasi', style: new TextStyle(fontSize: 17.0),)
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
