import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart' as Firebase_Storage;

class Storage {
  final Firebase_Storage.FirebaseStorage storage =
      Firebase_Storage.FirebaseStorage.instance;

  Future<void> uploadFile({
    required String filePath,
    required String fileName,
  }) async {
    File file = File(filePath);

    try {
      await storage.ref('test/$fileName').putFile(file);
    } on FirebaseException catch (e) {
      print(e);
    }
  }
}
