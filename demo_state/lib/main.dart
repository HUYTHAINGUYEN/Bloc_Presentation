import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  int _counter = 0;
  bool _isButtonDisabled;

  @override
  void initState() {
    _isButtonDisabled = false;
  }

  void _incrementCounter() {
    setState(() {
      _counter += 2;
    });
  }

  void _decrementCounter() {
    setState(() {
      _isButtonDisabled = true;
      _counter--;
    });
  }

  void _multipliedCounter() {
    if (_counter != 0) {
      setState(() {
        _counter *= 2;
      });
    } else {
      print("Bằng 0 sao nhân được trời !!!!!");
    }
  }

  void _multipliedCounter4() {
    if (_counter != 0) {
      setState(() {
        _counter *= 4;
      });
    } else {
      print("Học lại toán đi !!!!!");
    }
  }

  void _disnable() {
    setState(() {
      _isButtonDisabled = false;
    });
  }

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
              'NUMBER:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 10.0,
          ),
          FloatingActionButton(
            onPressed: _multipliedCounter,
            tooltip: 'Multiplied',
            child: Icon(Icons.clear),
          ),
          SizedBox(
            height: 20.0,
          ),
          FloatingActionButton(
            onPressed: _isButtonDisabled ? _multipliedCounter4 : null,
            tooltip: 'Multiplied x 4',
            child: Icon(Icons.error),
          ),
          FloatingActionButton(
            onPressed: _disnable,
            tooltip: 'disnable',
            child: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
