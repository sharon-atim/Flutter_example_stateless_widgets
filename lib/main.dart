import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
    theme: ThemeData(primarySwatch: Colors.indigo),
    title: 'Stateless Widgets',
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double myTextSize = 20;
    const double myIconSize = 25;
    const TextStyle myTextStyle =
        TextStyle(color: Colors.indigo, fontSize: myTextSize);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Stateless Widgets'),
        ),
        body: Container(
          padding: const EdgeInsets.only(bottom: 2.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const <Widget>[
                  MyCard(
                      title: Text(
                        'Bike',
                        style: myTextStyle,
                      ),
                      icon: Icon(
                        Icons.pedal_bike,
                        size: myIconSize,
                        color: Colors.green,
                      )),
                  MyCard(
                    title: Text(
                      'Walking',
                      style: myTextStyle,
                    ),
                    icon: Icon(
                      Icons.directions_walk,
                      size: myIconSize,
                      color: Colors.indigo,
                    ),
                  ),
                  MyCard(
                    title: Text(
                      'Taxi',
                      style: myTextStyle,
                    ),
                    icon: Icon(Icons.local_taxi,
                        size: myIconSize, color: Colors.yellow),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;
  const MyCard({Key? key, required this.title, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: <Widget>[title, icon],
            ),
          ),
        ));
  }
}
