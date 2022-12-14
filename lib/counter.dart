import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  late int _count = 0;

  @override
  void initState() {
    _count = 1+1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Counter"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _count = 0;
                });
              },
              icon: const Icon(Icons.delete))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Liver Pool",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const Divider(height: 20,color: Colors.redAccent),
            Text(
              "$_count",
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                _count ++;
                debugPrint("count:$_count");
              });
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.redAccent,
            child: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                _count --;
                debugPrint("count:$_count");
              });
            },
          ),
        ],
      ),
    );
  }
}