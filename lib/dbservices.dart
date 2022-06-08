// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud/dataClass.dart';

CollectionReference tblCatatan = FirebaseFirestore.instance.collection("tabelCatatan");

class Database {
  //use getAllData to get all data
  static Stream<QuerySnapshot> getAllData() {
    return tblCatatan.snapshots();
  }

  //use addData to add new data
  static Future<void> addData({required itemCatatan item}) async {
    DocumentReference docRef = tblCatatan.doc(item.itemJudul);

    await docRef
        .set(item.toJson())
        .whenComplete(() => print("Data Added"))
        .catchError((e) => print(e));
  }

  //use updateData to update data
  static Future<void> updateData({required itemCatatan item}) async {
    DocumentReference docRef = tblCatatan.doc(item.itemJudul);

    await docRef
        .update(item.toJson())
        .whenComplete(() => print("Data Updated"))
        .catchError((e) => print(e));
  }

  static Future<void> deleteData({required String id}) async {
    DocumentReference docRef = tblCatatan.doc(id);

    await docRef
        .delete()
        .whenComplete(() => print("Data Updated"))
        .catchError((e) => print(e));
  }
}
