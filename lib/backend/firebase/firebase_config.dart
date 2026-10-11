import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBSvXLzBJ268lvJM18PkwvLdEmwjT0GvyY",
            authDomain: "shift-squad-c-n-a-nurse-paks2e.firebaseapp.com",
            projectId: "shift-squad-c-n-a-nurse-paks2e",
            storageBucket: "shift-squad-c-n-a-nurse-paks2e.firebasestorage.app",
            messagingSenderId: "12888205709",
            appId: "1:12888205709:web:4a9d745cc0d455dd7b75c4"));
  } else {
    await Firebase.initializeApp();
  }
}
