import 'package:flutter/material.dart';
import 'package:kemahasiswaan_kelompok9/Pages/pengumuman-detail.dart';

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
                  style: TextStyle(height: 2.5, fontSize: 15)),
              subtitle: Text('Ormik Mahasiswa Baru',
                  style: TextStyle(height: 1.5, fontSize: 25, color: Colors.blue)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PengumumanDetail()));
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