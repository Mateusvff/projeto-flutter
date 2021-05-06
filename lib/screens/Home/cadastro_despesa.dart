import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:intl/intl.dart';
import '../../Cores.dart';

class CadastroDespesa extends StatefulWidget {
  @override
  _CadastroDespesaState createState() => _CadastroDespesaState();
}

class _CadastroDespesaState extends State<CadastroDespesa> {
  final contDespesa =
      MoneyMaskedTextController(decimalSeparator: ',', thousandSeparator: '.');
  TextEditingController contNome = TextEditingController();
  TextEditingController contDesc = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String contData;

  void _reset() {
    contDespesa.clear();
    contNome.clear();
    contDesc.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Adicionar despesa',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: 15, top: 140, bottom: 5, right: 15),
              child: TextFormField(
                controller: contDespesa,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.white, fontSize: 18),
                decoration: InputDecoration(
                  prefix: Text("R\$"),
                  prefixStyle: TextStyle(color: Colors.white, fontSize: 18),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.pink,
                    ),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  labelText: "Valor Gasto",
                  labelStyle: TextStyle(color: Colors.grey, fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 75),
              child: Container(
                width: 410,
                height: 350,
                decoration: BoxDecoration(
                  color: customPurple,
                  borderRadius: const BorderRadius.all(Radius.circular(22)),
                ),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: TextButton(
                                child: Text(
                                  'Seleciona a data',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'NotoSans',
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () async {
                                  final data = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2018),
                                    lastDate: DateTime(2022),
                                    locale: Locale("pt", "BR"),
                                  );
                                  if (data != null) {
                                    final datapt = //colocando data no padrão br
                                        DateFormat(DateFormat.YEAR_MONTH_DAY,
                                                'pt_Br')
                                            .format(data);
                                    print(datapt);
                                    contData = datapt;
                                  }
                                },
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.date_range,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                final data = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2018),
                                  lastDate: DateTime(2022),
                                  locale: Locale("pt", "BR"),
                                );
                                if (data != null) {
                                  final datapt = //colocando data no padrão br
                                      DateFormat(DateFormat.YEAR_MONTH_DAY,
                                              'pt_Br')
                                          .format(data);
                                  print(datapt);
                                  contData = datapt;
                                }
                              },
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: contNome,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Nome",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: contDesc,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: "Descrição",
                          labelStyle:
                              TextStyle(fontSize: 20, color: Colors.white),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: customPink,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () async {
                        if (true) {
                          if (contDespesa.text.isNotEmpty &&
                              contNome.text.isNotEmpty &&
                              contDesc.text.isNotEmpty) {
                            double despesa = contDespesa.numberValue;
                            String nome = contNome.text;
                            String desc = contDesc.text;

                            Map<String, dynamic> data = {
                              "valor": despesa,
                              "data": contData,
                              "nome": nome,
                              "desc": desc,
                            };

                            await FirebaseFirestore.instance
                                .collection('users')
                                .doc(FirebaseAuth.instance.currentUser.uid)
                                .collection('despesas')
                                .doc(DateTime.now().year.toString())
                                .collection(DateTime.now().month.toString())
                                .doc(nome)
                                .set(data);
                            _reset();
                          } else {
                            _scaffoldKey.currentState.showSnackBar(SnackBar(
                              content: Text(
                                  'Certifique que todos os espaços estão preenchidos'),
                              backgroundColor: Colors.red,
                            ));
                          }
                        }
                      },
                      child: Text(
                        "Concluído",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
