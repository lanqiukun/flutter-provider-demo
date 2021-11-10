import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../color_provider.dart';

class ColorDisplay extends StatelessWidget {
  const ColorDisplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("color display builded");

    ColorProvider colorProvider = Provider.of(context);

    return Container(width: 100, height: 100, color: colorProvider.color);
  }
}
