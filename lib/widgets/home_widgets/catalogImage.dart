import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogImage extends StatelessWidget {
  const CatalogImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Image.network(
          image,
          ).box.rounded.p16.color(MyTheme.creamColor).make().p16().w32(context);
  }
}