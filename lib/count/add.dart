import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_provider.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("add builded");

    CounterProvider counterProvider = Provider.of(context);

    return IconButton(
        icon: const Icon(Icons.add), onPressed: counterProvider.add);
  }
}
