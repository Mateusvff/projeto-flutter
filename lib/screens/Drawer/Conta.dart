import 'package:flutter/material.dart';
import '../../Cores.dart';

class DrawerConta extends StatefulWidget {
  final Map<String, dynamic> data;

  const DrawerConta({Key key, this.data}) : super(key: key);

  @override
  _DrawerContaState createState() => _DrawerContaState(data);
}

class _DrawerContaState extends State<DrawerConta> {

  final Map<String, dynamic> data;

  _DrawerContaState(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: customBg,
        title: Text(
          'Conta',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: CircleAvatar(
              backgroundColor:
                  customGrey, // Adicionar Foto do Usuario (Firebase)
              radius: 90.0,
              backgroundImage: (data['UserPhotoUrl'] == null)
                  ? AssetImage('images/user-avatar.png')
                  : NetworkImage(data['UserPhotoUrl']),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              'Seja Bem Vindo, ${data['userName']}',
            ),
          )
        ],
      )),
    );
  }
}