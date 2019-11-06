import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Card and Parsing",
    home: new HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Card and Parsing"),
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(icon: Icons.home, text: "Home", warna: Colors.brown,),
            new CardSaya(icon: Icons.favorite, text: "Favourite", warna: Colors.pink,),
            new CardSaya(icon: Icons.place, text: "Place", warna: Colors.blue,),
            new CardSaya(icon: Icons.settings, text: "Settings", warna: Colors.black,),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {

  //mendeklarasikan Variabel
  CardSaya({this.icon, this.text, this.warna});

    final IconData icon;
    final String text;
    final Color warna;

    //end Deklarasi Variabel

  @override
  Widget build(BuildContext context) {
    return new Container(

      //mengatur baris
      padding: new EdgeInsets.all(10.0),
      //end baris

      child: new Card(
          child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: warna,
          ),
          new Text(
            text,
            style: new TextStyle(fontSize: 20.0),
          ),
        ],
      )),
    );
  }
}
