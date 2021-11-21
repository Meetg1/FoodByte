import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{
  final String uid;
  DatabaseService({required this.uid});
  //collection reference
  final CollectionReference profileCollection = FirebaseFirestore.instance.collection('profile');

  Future updateUserProfile(String name, String phone) async{
    return await profileCollection.doc(uid).set({
      'name' : name,
      'phone' : phone,
    });
  }
}