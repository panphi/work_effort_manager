import 'package:cloud_firestore/cloud_firestore.dart';

class DBInteractor {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<QuerySnapshot> getEfforts() {
    return _firestore.collection('effort').get();
  }
}
