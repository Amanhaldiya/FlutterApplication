import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/Pages/home_detail.dart';

import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalog.dart';
import '../themes.dart';
import '../../Pages/home_page.dart';
import 'Addtocart.dart';
import 'catalogImage.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ProductsApp.products.length,
      shrinkWrap:true,
      itemBuilder: (context,index){
      // final catalog=ProductsApp.getByPosition(index);
        final catalog=ProductsApp.products[index];
        return InkWell(
          onTap:() =>Navigator.push(context,MaterialPageRoute
          (builder: (context)=>HomeDetailPage
          (catalog: catalog
           //  catalog: ProductsApp.getById(1),
          ))
          ),
        child:CatalogItem(catalog:catalog),
    );}
      );
  }
}
class CatalogItem extends StatelessWidget {
  final Products catalog;
  const CatalogItem({super.key, required this.catalog}):assert(catalog!=null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [
        Hero(
          tag:Key(catalog.id.toString()),
        child:CatalogImage(image:catalog.image),
        
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluishcolor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              //buttonPadding: Vx.mOnly(right: 9),
              buttonPadding: EdgeInsets.zero,
              children: [
                 
                "\$${catalog.price}".text.bold.xl.make(),
                 AddtoCart(catalog:catalog),
                 // ElevatedButton(
                   // style: ButtonStyle(
                //    backgroundColor: MaterialStateProperty.all(MyTheme.lightbluishColor),
                //    shape: MaterialStateProperty.all(StadiumBorder())
                 //   ),
                 //   onPressed: (){}, child: "Buy".text.make()),
              ],
            ).pOnly(right: 8)
          
          ],
        ))
       // Image.network(
        //  catalog.image
         // ).box.rounded.p16.color(MyTheme.creamColor).make().p16().w32(context)
      ],)
    ).white.rounded.square(100).make().py16();
  }
}



//class AddtoCart extends StatefulWidget {
 // final Products catalog;
 // const AddtoCart({super.key, required this.catalog});

  //@override
//  State<AddtoCart> createState() => _AddtoCartState();
//}

//class _AddtoCartState extends State<AddtoCart> {
 //  final _cart=CartProduct();
  // bool isInCart=false;
 // @override
  //Widget build(BuildContext context) {
   
  //  bool isInCart=_cart.products.contains(widget.catalog)??false;
    //return  ElevatedButton( 
           //          onPressed: (){
                    //  isInCart=isInCart.toggle();
              //        if(!isInCart){
               //         isInCart=isInCart.toggle();
                  //      final _catalog1=ProductsApp();
                //      }
                   //   final _catalog1=ProductsApp();
                     // final _cart=CartProduct();
                  //    _cart.catalog=_catalog1;
                 //     _cart.add(widget.catalog);
                      
                 //     setState(() {
                        
                 //     });
                 //   },
                //    style: ButtonStyle(
               //     backgroundColor: MaterialStateProperty.all(MyTheme.lightbluishColor),
               //     shape: MaterialStateProperty.all(const StadiumBorder())
              //      ),
              //      child: isInCart?Icon(Icons.done):"Buy".text.make());
                    
                    
                    
 // }
//}