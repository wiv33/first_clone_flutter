import 'package:first_clone_flutter/widget/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BbongFlix",
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
      home: const DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              Center(
                child: Text('home'),
              ),
              Center(
                child: Text('search'),
              ),
              Center(
                child: Text('save'),
              ),
              Center(
                child: Text('more'),
              )
            ],
          ),
          bottomNavigationBar: BottomBar(),
        ),
      ),
    );
  }
}
