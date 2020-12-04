import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/pages/pengumuman2.dart';

class Pengumuman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pengumuman'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('8 Agustus 2020',
                  style: TextStyle(height: 2, fontSize: 20)),
              subtitle: Text('Ormik Mahasiswa Baru',
                  style: TextStyle(height: 2, fontSize: 25, color: Colors.blue)),
              trailing: Icon(Icons.arrow_forward, size: 50,),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Pengumuman2()));
              },
            ),
            Divider(
              color: Colors.black12,
              height: 20,
              thickness: 3,
            ),
          ],
        )
    );
  }
}

