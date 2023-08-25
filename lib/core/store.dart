import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore{
   late ProductsApp catalog;


   late CartProduct cart;
   MyStore(){
    catalog =ProductsApp();
    cart =CartProduct();
    cart.catalog=catalog;      
  }







}