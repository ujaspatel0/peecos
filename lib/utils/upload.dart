import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;

Future<String> uploadImage(String filePath, String imageName) async {
  File file = File(filePath);
  String url = "";
  try {
    firebase_storage.Reference ref =
        firebase_storage.FirebaseStorage.instance.ref('images/$imageName.jpg');

    await ref.putFile(file);
    await ref.getDownloadURL().then((value) {
      url = value;
    });
  } on firebase_core.FirebaseException catch (e) {
    print("Upload Image : ${e.message}");
  }

  return url;
}

Future uploadPdf(List<int> asset, String name) async {
  String url = "";

  firebase_storage.Reference ref =
  firebase_storage.FirebaseStorage.instance.ref().child('pdf/$name.pdf');
  await ref.putData(Uint8List.fromList(asset));
  await ref.getDownloadURL().then((value) {
    url = value;
  });
  return url;
}
