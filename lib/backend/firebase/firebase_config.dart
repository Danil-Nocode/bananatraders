import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA5IDKrN4rMpYNNAMmZI3L3FRagCRePqzE",
            authDomain: "bananatraders-io.firebaseapp.com",
            projectId: "bananatraders-io",
            storageBucket: "bananatraders-io.appspot.com",
            messagingSenderId: "68010049157",
            appId: "1:68010049157:web:0b10444a077549eb44f3ec"));
  } else {
    await Firebase.initializeApp();
  }
}
