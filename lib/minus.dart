import 'package:flutter/material.dart';
import 'package:provider_demo/counter_provider.dart';
import 'package:provider/provider.dart';

class Minus extends StatelessWidget {
  const Minus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of(context);
    return IconButton(
        icon: const Icon(Icons.remove), onPressed: counterProvider.sub);
  }
}
