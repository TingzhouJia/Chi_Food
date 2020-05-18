
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepo {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthRepo({FirebaseAuth firebaseAuth}): _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance;


}