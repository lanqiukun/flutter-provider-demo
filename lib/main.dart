import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/add.dart';
import 'package:provider_demo/minus.dart';
import 'package:provider_demo/value.dart';
import 'package:provider_demo/counter_provider.dart';

import 'passerby.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("provider demo"),
          ),
          body: Row(
            children: const [
              Add(),
              Value(),
              Minus(),
              Passerby(),
            ],
          ),
        ),
      ),
    );
  }
}
