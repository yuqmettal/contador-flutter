import 'package:flutter/material.dart'; 


class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps', style: _estiloTexto,),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _conteo ++;
          setState(() {});
        },
        child: Icon(Icons.add),
        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}