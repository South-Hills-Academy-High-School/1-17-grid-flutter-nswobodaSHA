import 'dart:html';

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: '1-17 App',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var opacityList = [1.0. 1.0, 1.0, 1.0, 1.0. 1.0, 1.0, 1.0, 1.0];
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    return Scaffold(
        body: GridView.builder(
      itemCount: 9,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (context, index) {
        return Opacity(
          opacity: 0.5,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Material(
                color: Colors.blueGrey[700],
                child: InkWell(
                  child: Image.network(
                      'https://hips.hearstapps.com/hmg-prod/images/speedkore-carbon-fiber-demon-01-1595948722.jpg?crop=0.842xw:0.630xh;0.0850xw,0.321xh&resize=1200:*'),
                  onTap: () {},
                ),
              ),
            ),
          ),
        );
      },
    ));
  }
}
