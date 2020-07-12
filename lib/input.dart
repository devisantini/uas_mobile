import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/ui/note.dart';

import 'output.dart';
import 'about_me.dart';

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  TextEditingController nama = TextEditingController();
  TextEditingController alamat = TextEditingController();
  int pokok = 0;
  int bunga = 0;
  int tahun = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.black, size: 35),
        title: Text('Aplikasi Peminjaman'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.note_add, color: Colors.black, size: 30),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Note()),
              );
            },
          ),
        ],
        bottom: PreferredSize(
            child: Container(
              color: Colors.black,
              height: 4.0,
            ),
            preferredSize: null),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12),
              color: Colors.pinkAccent,
              child: Column(
                children: <Widget>[
                  Text(
                    'Sistem ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Menghitung Jumlah Pinjaman',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 22,
                    ),
                    TextField(
                      controller: alamat,
                      decoration: InputDecoration(
                        hintText: "Alamat Peminjam",
                        labelText: "Alamat",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextField(
                        onChanged: (txt) {
                          setState(() {
                            pokok = int.parse(txt);
                          });
                        },
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        decoration: InputDecoration(
                            labelText: "Pokok Pinjaman",
                            suffix: Text('Rupiah'),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Jumlah Pinjaman')),
                    SizedBox(
                      height: 22,
                    ),
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          bunga = int.parse(txt);
                        });
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Besar Bunga",
                          suffix: Text('%'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'percent'),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextField(
                      onChanged: (txt) {
                        setState(() {
                          tahun = int.parse(txt);
                        });
                      },
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      decoration: InputDecoration(
                          labelText: "Lama Pinjaman",
                          suffix: Text('Tahun'),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: 'Tahun'),
                    ),
                  ],
                )),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, bottom: 20),
              child: RaisedButton(
                onPressed: () {
                  _sendDataTobmiResult(context);
                },
                padding: EdgeInsets.only(top: 5, bottom: 5),
                color: Colors.pinkAccent,
                child: Text(
                  'Hitung',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          color: Colors.blue,
          child: Text(
            'By: Putu Devi Santini',
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfil()),
            );
          },
        ),
      ),
    );
  }

  void _sendDataTobmiResult(BuildContext context) {
    String textToSend = nama.text;
    String text = alamat.text;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => OutputAPK(
              nama: textToSend,
              alamat: text,
              pokokpinjaman: pokok,
              bungapinjaman: bunga,
              durasi: tahun,
            )));
  }
}
