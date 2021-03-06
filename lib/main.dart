import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Material Design")),
      ),
      body: new MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  AlertDialog dialog = new AlertDialog(
    content: new Text("You Clicked me"),
    title: Text("Alert"),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Container(
          child: Center(
            child: MaterialButton(
                child: Text("Click ME"),
                onPressed: () => Scaffold.of(context).showSnackBar(new SnackBar(
                      content: new Text("You Clicked Me"),
                      duration: new Duration(seconds: 3),
                    ))),
          ),
        ),
        Container(
          child: Center(
            child: MaterialButton(
                child: Text("Click ME For Alert Dialog Box"),
                // ignore: deprecated_member_use
                onPressed: () => showDialog(context: context, child: dialog)),
          ),
        )
      ],
    );
  }
}
