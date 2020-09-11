import 'package:aula21/store/contador.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final contador = Contador();
  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Observer(
              builder: (_) => Text(
                '${contador.valor}',
                style: Theme.of(context).textTheme.headline4,
              ), // Text
            ),
            Observer(
              builder: (context) {
                return Text(
                  '${contador.nome}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            RaisedButton(
              onPressed: contador.alterar,
              child: Text('Alterar'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: contador.adicionar,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
