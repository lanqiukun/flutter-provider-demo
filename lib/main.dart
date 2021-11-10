import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/count/add.dart';
import 'package:provider_demo/color/change_to_green.dart';
import 'package:provider_demo/color/change_to_red.dart';
import 'package:provider_demo/color/color_display.dart';
import 'package:provider_demo/color_provider.dart';
import 'package:provider_demo/count/minus.dart';
import 'package:provider_demo/count/value.dart';
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
        ChangeNotifierProvider(create: (context) => CounterProvider()),
        ChangeNotifierProvider(create: (context) => ColorProvider()),
      ],
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("provider demo"),
          ),
          body: Column(
            children: [
              Row(
                children: const [
                  Add(),
                  Value(),
                  Minus(),
                ],
              ),
              Passerby(),
              Row(
                children: const [
                  ChangeToGreen(),
                  ColorDisplay(),
                  ChangeToRed(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
