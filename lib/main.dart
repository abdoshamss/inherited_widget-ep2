import 'package:flutter/material.dart';
import 'package:inherited_widget/controllers/state_widget.dart';
import 'package:inherited_widget/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateInheritedWidget(
      counter: 0,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Inherited Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
