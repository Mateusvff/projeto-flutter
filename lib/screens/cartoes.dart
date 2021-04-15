import 'package:flutter/material.dart';
import '../Cores.dart';

class Cartoes extends StatefulWidget {
  @override
  _CartoesState createState() => _CartoesState();
}

class _CartoesState extends State<Cartoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        backgroundColor: customBg,
        title: Text(
          'Cartões',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'NotoSans',
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: TextButton(
                  child: Text(
                    'Adicionar cartão',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.all(Radius.circular(18))),
                child: TextButton(
                  child: Text(
                    'Remover cartão',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'NotoSans',
                        color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150.0),
              child: Container(
                height: 440,
                width: 410,
                decoration: BoxDecoration(
                    color: customPurple,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(22.0),
                      topLeft: Radius.circular(22.0),
                    )),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: customCyan,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Visa black (Banco do Brasil)',
                              style: TextStyle(
                                  color: customCyan,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card, color: customRed),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'MasterCard (Banco do Brasil)',
                              style: TextStyle(
                                  color: customRed,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card, color: Colors.yellow),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Visa Platinum (Santander)',
                              style: TextStyle(
                                  color: Colors.yellowAccent,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 15.0),
                      child: Row(
                        children: [
                          Icon(Icons.credit_card, color: Colors.white),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              'Crédito Universitário (Nubank)',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'NotoSans',
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
