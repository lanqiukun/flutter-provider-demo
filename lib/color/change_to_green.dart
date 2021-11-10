import 'package:flutter/material.dart';
import 'package:provider_demo/color_provider.dart';
import 'package:provider/provider.dart';

class ChangeToGreen extends StatelessWidget {
  const ChangeToGreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("green_button builded");

    ColorProvider colorProvider = Provider.of(context);
    return IconButton(
        onPressed: colorProvider.changeToGreen,
        icon: const Icon(Icons.color_lens, color: Colors.green));
  }
}
