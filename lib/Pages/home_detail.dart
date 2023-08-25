import "package:flutter/material.dart";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/widgets/home_widgets/Addtocart.dart";
import "package:flutter_application_1/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";






class HomeDetailPage extends StatelessWidget {
  final Products catalog;
  const HomeDetailPage ({super.key ,required this.catalog}):assert(catalog!=null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar:Container(  
              color: Colors.white,
              child:ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              //buttonPadding: Vx.mOnly(right: 9),
              buttonPadding: EdgeInsets.zero,
              children: [
                 
                "\$${catalog.price}".text.bold.xl4.red800.make(),
                //  ElevatedButton(
                   // style: ButtonStyle(
                  //  backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishcolor),
                 //   shape: MaterialStateProperty.all(StadiumBorder())
                //    ),
                //    onPressed: (){}, child: "Add To Cart".text.make()).wh(115,50),
                AddtoCart(catalog: catalog).wh(115,50),
              ],
            ).p32(),
      ),
      body:SafeArea(
        bottom: false,
    child: Column(
      children: [
       Hero(
         tag:Key(catalog.id.toString()),
      child:  Image.network(catalog.image),
     ).h32(context), 
    Expanded(child:VxArc(
      height: 30,
      arcType: VxArcType.CONVEY,
      edge: VxEdge.TOP,
      child:Container(
      color:Colors.white,
      width: context.screenWidth,
      child: Column(
        children:[
            catalog.name.text.xl4.color(MyTheme.darkBluishcolor).bold.make(),
            catalog.desc.text.xl.textStyle(context.captionStyle).make(),
            10.heightBox,
            "15.40 cm (6.1-inch) Super Retina XDR display Advanced camera system for better photos in any light A15 Bionic chip with 5-core GPU for lightning-fast performance. Superfast 5G cellular iOS 16 offers even more ways to personalise, communicate and share"
            .text
            .textStyle(context.captionStyle).make().p16()
      ]).py64(),
      ),
    )
    ),
     ],
    )



    )
    );
  }
}