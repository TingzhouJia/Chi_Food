class FirestorePaths{
  static const ORDER='order';
  static const USER='user';
  static const REVIEW="review";
  static String userPath(String uid){
    return "$USER/$uid";
  }
}