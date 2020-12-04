import 'package:flutter/material.dart';

import 'beastudi-detail.dart';

class Beastudi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Beastudi'),
        ),
        body: ListView(
          children: [
            ListTile(
              title: Text('3 April 2020',
                  style: TextStyle(height: 2.5, fontSize: 15)),
              subtitle: Text('Beastudi Tahfidz',
                  style: TextStyle(height: 1.5, fontSize: 25, color: Colors.blue)),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BeastudiDetail()));
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