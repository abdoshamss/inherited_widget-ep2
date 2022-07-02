import 'package:flutter/material.dart';

class StateInheritedWidget extends InheritedWidget {
  final int counter;
  const StateInheritedWidget({
    Key? key,
    required super.child,
    this.counter = 0,
  }) : super(key: key);

  @override
  bool updateShouldNotify(covariant StateInheritedWidget oldWidget) =>
      oldWidget.counter != counter;
}
