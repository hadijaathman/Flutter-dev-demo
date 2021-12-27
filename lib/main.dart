// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyApp(
        title: 'Product layout demo',
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: const <Widget>[
          ProductBox(
              name: "iphone",
              description: "iPhone is the stylist phone ever",
              image: "iphone.PNG",
              price: 1000),
          ProductBox(
              name: "Pixel",
              description: "Pixel is the most featureful phone ever",
              image: "pixel.PNG",
              price: 800),
          ProductBox(
              name: "Laptop",
              description: "Laptop is most productive development tool",
              price: 2000,
              image: "laptop.PNG"),
          ProductBox(
              name: "Tablet",
              description: "Tablet is the most useful device ever for meeting",
              price: 1500,
              image: "tablet.PNG"),
          ProductBox(
              name: "Pendrive",
              description: "Pendrive is useful storage medium",
              price: 100,
              image: "pendrive.PNG"),
          ProductBox(
              name: "Floppy Drive",
              description: "Floppy drive is useful rescue storage medium",
              price: 20,
              image: "floppydrive.PNG"),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.image,
      required this.price})
      : super(key: key);
  final String name, description, image;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/images/' + image),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      this.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(this.description),
                    Text("price: " + this.price.toString()),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
/*
// class container single state widgets
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(25),
      child: Center(
        child: Text(
          'Hello world',
          style:
              TextStyle(color: Colors.black, letterSpacing: 0.5, fontSize: 20),
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}
*/

/*class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String title = "flutter code";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return const MaterialApp(
      title: title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key: key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: <Widget>[
          IconButton(
            
            onPressed: onPressed, icon: icon)
        ],
      ),
    );
  }
  
}*/
/*void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
//this widget is the root of the application
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello world',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: MyHomePage(title: 'Hope Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
          child: Text(
        'Hello world',
      )),
    );
  }
}
*/