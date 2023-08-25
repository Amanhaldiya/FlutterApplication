import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';

class ProductsApp{
 

 static List<Products> products=[];
 //=[
  //Products(
   //    id:"Application",
    //   name:"Apple iphone 12 Pro",
    //   desc:"Apple iphone 12th generation",
    //   price:990,
    //   color:"blue",
     //  image:"https://rukminim2.flixcart.com/image/416/416/xif0q/mobile/3/5/l/-original-imaghx9qmgqsk9s4.jpeg?q=70",
//
// ),];
  //static Products getById(int id)=>
   Products getById(int id)=>
 products.firstWhere((element) => element.id==id, orElse: null);

    // static Products getByPosition(int pos)=>products[pos];
      Products getByPosition(int pos)=>products[pos];


}





class Products{
    int id;
    String name="";
    String desc="";
    int price;
    String color="";
    String image="";
   
 Products({
  required this.id,required this.name,required this.desc,required this.price,required this.color,required this.image
 });
   factory Products.fromMap(Map<String,dynamic>map){
  return Products(
    id:map["id"],
    name:map["name"],
    desc:map["desc"],
    price:map["price"],
    color:map["color"],
    image:map["image"],
  );
   }
 toMap()=>{
   "id":id,
   "name":name,
  "desc":desc,
   "price":price,
   "color":color,
   "image":image,
 };



 }