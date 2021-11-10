import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/counter_provider.dart';

class Value extends StatelessWidget {
  const Value({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("value builded");

    CounterProvider counterProvider = Provider.of(context);
    var number = counterProvider.num;

    return Text(number.toString());
  }
}
