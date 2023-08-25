import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../themes.dart';



class AddtoCart extends StatelessWidget {
  final Products catalog;
   AddtoCart({super.key, required this.catalog});

  @override
  // final _cart=CartProduct();
  // bool isInCart=false;
  @override
  Widget build(BuildContext context) {
    VxState.watch(context,on:[AddMutation,RemoveMutation]);
   final CartProduct _cart=(VxState.store as MyStore).cart;
 //  final ProductsApp _catalog1=(VxState.store as MyStore).catalog;
    bool isInCart=_cart.products.contains(catalog)??false;
    return  ElevatedButton( 
                     onPressed: (){
                    //  isInCart=isInCart.toggle();
                      if(!isInCart){
                      //  isInCart=isInCart.toggle();
                       // final _catalog1=ProductsApp();
                     //   _cart.catalog=_catalog1;
                     // _cart.add(catalog);
                        AddMutation(catalog);
                      }
                      final _catalog1=ProductsApp();
                     // final _cart=CartProduct();
                  //    _cart.catalog=_catalog1;
                    //  _cart.add(catalog);
                      
                    //  setState(() {
                        
                     // });
                    },
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(MyTheme.lightbluishColor),
                    shape: MaterialStateProperty.all(const StadiumBorder())
                    ),
                    child: isInCart?Icon(Icons.done):
                    //"Buy".text.make());
                     Icon(CupertinoIcons.cart_badge_plus));



                    
  }
}
