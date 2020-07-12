import 'package:flutter/material.dart';
import 'medsos.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        title: Text("About Me"),
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color: Colors.white70,
            height: 4.0,
          ),
          preferredSize: null,
        ),
      ),
      body: Konten(),
    );
  }
}

class Konten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/devi.jpg'),
                  )
                //BELUM ISI FOTO
              ),
            ),
            Text(
              'Putu Devi Santini',
              style: TextStyle(color: Colors.black, fontSize: 24.0),
            ),
            Text(
              'devi.santini@undiksha.ac.id',
              style: TextStyle(color: Colors. blue, fontSize: 14.0),
            ),
            Row(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 40, left: 35),
                  padding:
                  EdgeInsets.only(left: 23, right: 23, top: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.my_location,
                        size: 40,
                        color: Colors.red,
                      ),
                      Container(
                        child: Text(
                          'Pegadungan',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        margin: EdgeInsets.only(top: 4),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 40, left: 35),
                  padding:
                  EdgeInsets.only(left: 23, right: 23, top: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 40,
                        color: Colors.red,
                      ),
                      Container(
                        child: Text(
                          'Sukasada',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  )),
            ]),
            Row(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 40, left: 35),
                  padding:
                  EdgeInsets.only(left: 23, right: 23, top: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )),
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.nature_people, color: Colors.red, size: 40),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Medsos()),
                          );
                        },
                      ),
                      Container(
                        child: Text(
                          'Instagram',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 40, left: 35),
                  padding:
                  EdgeInsets.only(left: 23, right: 23, top: 10, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.blue,
                        width: 2,
                      )),
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.school, size: 40, color: Colors.red),
                      Container(
                        child: Text(
                          'Undiksha',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      )
                    ],
                  )),
            ]),
          ],
        ));
  }
}
