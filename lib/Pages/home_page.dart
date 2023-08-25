import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_application_1/models/cart.dart";
import "dart:convert";
import "package:flutter_application_1/models/catalog.dart";
import "package:flutter_application_1/utils/routes.dart";
import "package:flutter_application_1/widgets/Item_widget.dart";
import "package:flutter_application_1/widgets/drawer.dart";
import "package:flutter_application_1/widgets/themes.dart";
import "package:velocity_x/velocity_x.dart";
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import "../core/store.dart";
import "../widgets/home_widgets/catalogheader.dart";
import "../widgets/home_widgets/catloglist.dart";


class HomePAge extends StatefulWidget {
  const HomePAge({super.key});

  @override
  State<HomePAge> createState() => _HomePAgeState();
}

class _HomePAgeState extends State<HomePAge> {
  @override
void initState(){
  super.initState();
  loadData();
}
 loadData()async{
  await Future.delayed(Duration(seconds: 2));
 var productjson=await rootBundle.loadString("assetss/files/products.json");
 var decodeData=jsonDecode(productjson);
 //print(decodeData);
 var productdata=decodeData["products"];
 //List<Products>list=List.from(productdata).map<Products>((products) => 
     ProductsApp.products=List.from(productdata).map<Products>((products) => 
 
 Products.fromMap(products)).toList();
 setState(() {
   
 });
 print(productdata);
 }

  @override
  Widget build(BuildContext context) {
     //final List1=List.generate(5,(index)=>ProductsApp.products[(0)]);
   // int days=30;
//   String name="programming";
   
   // return  Scaffold(
     //     appBar: AppBar(
          
       //     title:const Text("App"),
      //    ),
       //   body: Padding(
        //  padding: EdgeInsets.all(5),
       //   child: (ProductsApp.products!=null && ProductsApp.products.isNotEmpty)?
          //ListView.builder(
        //    GridView.builder(
          //    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             //   crossAxisCount: 2,
             //   crossAxisSpacing: 15,
             //   mainAxisSpacing: 15,
            // ),
          
         //   itemCount:ProductsApp.products.length,
          //ProductsApp.products.length, 
        //  List1.length,
       //   itemBuilder: (BuildContext context, int index) {
        //    final products=ProductsApp.products[index];
        //    return Card(
         //     clipBehavior: Clip.antiAlias,
          //    shape: RoundedRectangleBorder(
        //        borderRadius: BorderRadius.circular(15),
              
         //     ),
          //    child: GridTile(
              
           //     header: Container(
           //       child:Text (products.name,
             //     style: TextStyle(color: Colors.white),
           //       ),
           //       padding: const EdgeInsets.all(12),
           //       decoration: BoxDecoration(color: Colors.blue),
                  
            //      ),
          //      child: Image.network(products.image),
           //     footer: //Text(products.price.toString()),
           //     Container(
           //       child:Text (products.price.toString(),
           //       style: TextStyle(color: Colors.white),
           //       ),
           //       padding: const EdgeInsets.all(12),
           //       decoration: BoxDecoration(color: Colors.blue),
                  
            //      ),
          //    ),
            //return ItemWidget(
              //product: ProductsApp.products[index],
            // product:List1[index],
            // product: ProductsApp.products[index],
         ////     );
         //   },):Center(child: CircularProgressIndicator(),),
            
       //     ),
      //  drawer:const Mydrawer(),
    //  );
     final _cart=(VxState.store as MyStore).cart;
     return Scaffold(
       
         
      //   drawer:Mydrawer(),
     //drawer: Mydrawer(),
      backgroundColor: MyTheme.creamColor1,
     // backgroundColor:context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation,RemoveMutation},
        builder:(context, store, status) => FloatingActionButton(onPressed: ()=>Navigator.pushNamed(context, MyRoutes.CartRoute),
         // backgroundColor:MyTheme.darkBluishcolor,
          //backgroundColor: context.theme.buttonColor,//
          backgroundColor:MyTheme.lightbluishColor,
          child:Icon(CupertinoIcons.cart,
          
          ),
        
        )//.p8().badge(),
        .badge(color: Vx.red300,
        size: 20,
        count:_cart.products.length,
        textStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        )
        
        ),
      ),
      body: SafeArea(
      child:Container(
        padding: Vx.m32,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [catalogheader(),
       if(ProductsApp.products!=null && ProductsApp.products.isNotEmpty)
          CatalogList().py16().expand()
       else
         // Center(
         //   child:CircularProgressIndicator().centered().expand()
         CircularProgressIndicator().centered().expand()
          //  )
     ],),),
     
     ),
     
    
     );
    
    
  }
}





