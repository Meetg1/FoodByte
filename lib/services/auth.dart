import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodbyte/services/database.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;


  // auth change user stream
  Stream<User?> get user{
    return _auth.authStateChanges();
  }
  // sign in anon
  // Future signInAnon() async {
  //   try {
  //     UserCredential result = await _auth.signInAnonymously();
  //     User? user = result.user;
  //     return user;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

// sign in with email and password
  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User? users = result.user;
      return users;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

// register with email and password

  Future registerWithEmailAndPassword(String email, String password, String name, String phone) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? users = result.user;
      await DatabaseService(uid: users!.uid).updateUserProfile(name,phone);
      return users;
    }catch(e){
      print(e.toString());
      return null;
    }
  }


// sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}