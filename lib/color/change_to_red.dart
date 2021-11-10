import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/color_provider.dart';

class ChangeToRed extends StatelessWidget {
  const ChangeToRed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("red_button builded");

    ColorProvider colorProvider = Provider.of(context);

    return IconButton(
        onPressed: colorProvider.changeToRed,
        icon: Icon(Icons.color_lens, color: Colors.red));
  }
}
