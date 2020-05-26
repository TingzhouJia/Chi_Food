
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
  Stream<BaseUser> isAuthenticated()  {


      return _firebaseAuth.onAuthStateChanged.asyncMap((firebaseUser) {

        return _fromFirebaseUser(firebaseUser);
      });

}

  @override
  Future<void> logOut(){
    return _firebaseAuth.signOut();
  }



  Future<BaseUser> login(String email, String password) async {
    final firebaseUser = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    if(firebaseUser==null){
      return null;
    }
    return await _fromFirebaseUser(firebaseUser.user);
  }

  Future<BaseUser> signUp(String email,String password,BaseUser userinfo) async {
    final firebaseUser=await _firebaseAuth.createUserWithEmailAndPassword(email: email.trim(), password: password);
    return await _fromFirebaseUser(firebaseUser.user,userInfo: userinfo);
  }

  Stream<BaseUser> getAuthenticationStateChange() {

    return _firebaseAuth.onAuthStateChanged.asyncMap((firebaseUser) {

      return _fromFirebaseUser(firebaseUser);
    });
  }

  Future<BaseUser> getUser() async{
    final user=await _firebaseAuth.currentUser();
    return _fromFirebaseUser(user);
  }

  Future<BaseUser> _fromFirebaseUser(FirebaseUser firebaseUser,{BaseUser userInfo}) async {

    if (firebaseUser == null) return Future.value(null);

    final documentReference =
    _fireStore.document(FirestorePaths.userPath(firebaseUser.uid));
    final snapshot = await documentReference.get();
    BaseUser user;
    if (snapshot.data==null||snapshot.data.length == 0) {
      final a=standardSerializers.serializeWith(BaseUser.serializer,userInfo.rebuild((a)=>a ..uid=firebaseUser.uid));
      await documentReference.setData(a);
      user=userInfo;
    } else {
      user = standardSerializers.deserializeWith(BaseUser.serializer,snapshot.data);
    }


    return user;
  }

}