import 'package:flutter/material.dart';

class Pengumuman2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengumuman'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('8 Agustus 2020',
                style: TextStyle(height: 2, fontSize: 20)),
            subtitle: Text('Ormik Mahasiswa Baru',
                style: TextStyle(height: 2, fontSize: 25, color: Colors.blue)),
          ),
          Divider(
            color: Colors.black12,
            height: 20,
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text('Kegiatan  Orientasi Mahasiswa baru angkatan 2020 akan dilaksanakan mulai tanggal 24 September 2020 hingga 30 September 2020. ',
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
