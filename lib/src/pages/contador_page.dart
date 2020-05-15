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
            Text(
              'Numero de taps',
              style: _estiloTexto,
            ),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _add, child: Icon(Icons.add),),
      ],
    );
  }

  void _add() => setState(() => _conteo++);
  void _sustraer() => setState(() => _conteo--);
  void _reset() => setState(() => _conteo = 0);
}
