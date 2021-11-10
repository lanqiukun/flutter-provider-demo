import 'package:flutter/material.dart';

class Passerby extends StatelessWidget {
  const Passerby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("Passerby builded");
    return Container(
      child: const Text("我只是路过而已"),
    );
  }
}
