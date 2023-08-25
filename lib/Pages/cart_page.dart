import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/widgets/themes.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

  class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body:Column(
        children: [
          CartList(

          ).p2().expand(),
          Divider(),
          CartTotal(),
        ],
      )
    );
  }
}


class CartTotal extends StatelessWidget {
  const CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
   // final _cart=CartProduct();
   final CartProduct _cart=(VxState.store as MyStore).cart;
    return SizedBox(
    
      height:200,
     
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
              VxConsumer(
            notifications: {},
             mutations: {RemoveMutation},
            builder:(context,store,status){
             return "\$${_cart.totalPrice}".text.xl5.color(MyTheme.lightbluishColor).make();
           },).expand().w(0),
         //   "\$${_cart.totalPrice}".text.xl5.color(MyTheme.lightbluishColor).make(),
            30.widthBox,
             ElevatedButton(onPressed: (){
             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: "Buying not supported yet".text.make()));
              
             }, 
             style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishcolor),
             ),
             child:"Buy".text.white.make(),
            
             
             ).w24(context)
             
          ],
        ),
     

    );
  }
}
                // children: <Widget>[
                //   VxConsumer<MyStore>(
                //     mutations: {IncrementMutation, DecrementMutation},
                //     builder: (ctx, store, status) {
                //       if (status == VxStatus.loading)
                //         return const CircularProgressIndicator();
                //       else
                //         return Text(
                //           "${store.counter.count.toString()}",
                //           style: Theme.of(context).textTheme.headline4,
                //         );
                //     },
                //   ),

class CartList extends StatelessWidget{
 // final _cart=CartProduct();
  @override
  Widget build(BuildContext context) {
    VxState.watch(context,on:[RemoveMutation]);
    final CartProduct _cart=(VxState.store as MyStore).cart;
      return _cart.products.isEmpty?"Nothing to show".text.xl3.makeCentered():ListView.builder(
     // itemCount: 5,
      itemCount: _cart.products.length,
      itemBuilder:(context,index)=>ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon:Icon(Icons.remove_circle_outline), onPressed: () { 
             //  _cart.remove(_cart.products[index]);
             RemoveMutation(_cart.products[index]);
              // setState(() {
                 
            //   });

           },
          ),
        title: _cart.products[index].name.text.make(),
       //   title: "Products".text.make(),
      ) 
    
    
    );
  }
}