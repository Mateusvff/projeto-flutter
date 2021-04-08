import 'package:flutter/material.dart';
import 'package:projeto_flutter/Widgets/calendar.dart';
import '../Cores.dart';

class Extrato extends StatefulWidget {
  @override
  _ExtratoState createState() => _ExtratoState();
}

class _ExtratoState extends State<Extrato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Text(
          'Extrato',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(color: Colors.white, child: Calendar()),
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Container(
                width: 400,
                height: 400,
                color: customPurple,
                child: Text(
                  'Informações do dia',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
