
import 'package:built_value/serializer.dart';
import 'package:chifood/bloc/base/FireAuth.dart';
import 'package:chifood/model/baseUser.dart';
import 'package:chifood/model/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../dbPath.dart';

class FireAuthRepo implements FireAuth{
  final FirebaseAuth _firebaseAuth;
  final Firestore _fireStore;
  static const UID="uid";
  static const USERNAME="username";
  static const GENDER="gender";
  static const FOODIE="foodie_level";
  static const PHOTO="photoUrl";
  static const COLOR="foodie_color";
  static const Location="primaryLocation";


  FireAuthRepo(this._firebaseAuth, this._fireStore);

  @override
  Future<bool> isAuthenticated() async{

}

  @override
  Future<void> logOut(){}

  Future<BaseUser> login(String email, String password) async {
    final firebaseUser = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);

    return await _fromFirebaseUser(firebaseUser.user);
  }

  Future<BaseUser> signUp(String email,String password,BaseUser userinfo) async {
    final firebaseUser=await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return await _fromFirebaseUser(firebaseUser.user);
  }

  Future<BaseUser> _fromFirebaseUser(FirebaseUser firebaseUser) async {

    if (firebaseUser == null) return Future.value(null);

    final documentReference =
    _fireStore.document(FirestorePaths.userPath(firebaseUser.uid));
    final snapshot = await documentReference.get();
    BaseUser user;
    if (snapshot.data==null||snapshot.data.length == 0) {
      user = BaseUser((u) => u
        ..uid = firebaseUser.uid
        ..gender='MALE'

             // Default name will be the email, let user change later
      );
      await documentReference.setData(toMap(user));
    } else {
      user = serializer.deserializeWith(serializer.snapshot);
    }


    return user;
  }

  static Map toMap(BaseUser user){
    return {

    };
  }
}