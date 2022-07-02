import 'package:flutter/material.dart';
import 'package:inherited_widget/controllers/state_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stateWidget =
        context.dependOnInheritedWidgetOfExactType<StateInheritedWidget>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shamss Counter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              stateWidget!.counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.color_lens,
                ),
                label: const Text('Change Primary Swatch'),
              ),
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
