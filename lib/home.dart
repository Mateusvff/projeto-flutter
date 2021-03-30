import 'package:flutter/material.dart';

const customBg = const Color(0xff131b26);
const customPurple = const Color(0xff7524ff);
const customRed = const Color(0xfff03244);
const customCyan = const Color(0xff00d5e2);
const customPink = const Color(0xfffc00e3);

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        title: Text(
          'Seja Bem Vindo,\n Carlos',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        backgroundColor: customBg,
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 25.0, 5.0, 25.0),
            padding: EdgeInsets.fromLTRB(190.0, 120.0, 190.0, 120.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Column(),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
            padding: EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 60.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
            padding: EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 60.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(55.0, 20.0, 55.0, 20.0),
            padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 20.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0, right: 45.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Cartões',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 45.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Extrato',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  alignment: Alignment.center,
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
