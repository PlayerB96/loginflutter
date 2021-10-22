import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: login());
  }
}

Widget login() {
  return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://www.wallpapertip.com/wmimgs/14-143651_neon-green-wallpaper-iphone.jpg"),
              fit: BoxFit.cover)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          iniciosesion(),
          campousuario(),
          campopassword(),
          botonentrar()
        ],
      )));
}

Widget iniciosesion() {
  return Center(
      child: Text("Iniciar Sesion",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)));
}

Widget campousuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white38),
        hintText: "Usuario",
        fillColor: Colors.black54,
        filled: true,
      ),
    ),
  );
}

Widget campopassword() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
    child: TextField(
      decoration: InputDecoration(
        hintStyle: TextStyle(fontSize: 20.0, color: Colors.white38),
        hintText: "Contrasena",
        fillColor: Colors.black54,
        filled: true,
      ),
    ),
  );
}

Widget botonentrar() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 40),
    child: TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.black87),
      onPressed: () {},
      child: Text("Ingresar"),
    ),
  );
}
