
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class catalogheader extends StatelessWidget {
  const catalogheader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
    
      "Catalog App".text.xl5.bold.color(MyTheme.darkBluishcolor).make(),
      "Trending products".text.xl2.make()

      ],
      
      );
  }
}