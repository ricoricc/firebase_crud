// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/dataClass.dart';
import 'package:firebase_crud/dbservices.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    MaterialApp(
      title: "Firebase CRUD",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Catatan"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          i++;
          final items = itemCatatan(
            itemJudul: "Data $i",
            itemIsi: "masoq",
          );
          Database.addData(item: items);
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 32,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(1),
        child: StreamBuilder<QuerySnapshot>(
          stream: Database.getAllData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Error');
            } else if (snapshot.hasData || snapshot.data != null) {
              return ListView.separated(
                itemBuilder: (context, index) {
                  DocumentSnapshot dsData = snapshot.data!.docs[index];
                  String lvJudul = dsData['judulCat'];
                  String lvIsi = dsData['isiCat'];
                  i = snapshot.data!.docs.length;
                  return ListTile(
                    onTap: () {
                      final items = itemCatatan(
                        itemJudul: lvJudul,
                        itemIsi: "updated Context",
                      );
                      Database.updateData(item: items);
                    },
                    onLongPress: () {
                      Database.deleteData(id: lvJudul);
                    },
                    title: Text(lvJudul),
                    subtitle: Text(lvIsi),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(height: 8),
                itemCount: snapshot.data!.docs.length,
              );
            }
            return Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.pinkAccent,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
