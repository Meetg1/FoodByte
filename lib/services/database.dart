import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:foodbyte/models/food_item.dart';
class DatabaseService{
  final String uid;
  DatabaseService({required this.uid});
  var cart = <List<FoodItem>,List<int>>{};
  //collection reference
  final CollectionReference profileCollection = FirebaseFirestore.instance.collection('profile');
  final CollectionReference foodCartCollection = FirebaseFirestore.instance.collection('foodcart');

  Future updateUserProfile(String name, String phone,String email) async{
    return await profileCollection.doc(uid).set({
      'name' : name,
      'phone' : phone,
      'email': email,
    });
  }
  Future updatefoodCart(cart, double itemtotal, double deliveryCharge, double taxes, double discount, double total ) async{
    return await foodCartCollection.doc(uid).set({
      'cart' : cart,
      'itemtotal': itemtotal,
      'deliveryCharge' : deliveryCharge,
      'taxes' : taxes,
      'discount': discount,
      'total': total,
    });
  }
}