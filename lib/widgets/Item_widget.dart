import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Products product;
  const ItemWidget({super.key, required this.product}):assert(product!=null);

  @override
  Widget build(BuildContext context) {
   return Card(
  //  color: Colors.blue,
   // shape: StadiumBorder(),
    child: ListTile(
      onTap: () {
        print("${product.desc} pressed");
      },
      leading: Image.network(product.image),
      title: Text(product.name),
      subtitle: Text(product.desc),
      trailing: Text("\$${product.price}",
      style: TextStyle(color:Colors.blue,
      fontWeight: FontWeight.bold ),
      
      ),
      
    ));
  }
}