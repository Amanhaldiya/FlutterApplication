import 'package:flutter_application_1/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartProduct{
  late ProductsApp _catalog1;


  final List<int>_itemIds=[];



 


  ProductsApp  get catalog=>_catalog1;
  set catalog(ProductsApp newCatalog){
    assert(newCatalog!=null);
    _catalog1=newCatalog;




  }




  List<Products>get products=>_itemIds.map((id) => _catalog1.getById(id)).toList();




  //get total price
  num get totalPrice=> products.fold(0, (total, current) => totalPrice+current.price);




  //add Items
  void add(Products item){
    _itemIds.add(item.id);
  }


//remove item
void remove(Products item){
  _itemIds.remove(item.id);
}



}
class AddMutation extends VxMutation<MyStore>{
  late final Products item;
  AddMutation(this.item);
  @override
  perform(){
    store?.cart._itemIds.add(item.id);
  }
}class RemoveMutation extends VxMutation<MyStore>{
  late final Products item;
  RemoveMutation(this.item);
  @override
  perform(){
    store?.cart._itemIds.remove(item.id);
  }
}
