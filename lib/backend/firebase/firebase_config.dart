import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyApPYdHObI3RKci4sXG8EYP4Ln9nLPZVcQ",
            authDomain: "petter-app-c8axto.firebaseapp.com",
            projectId: "petter-app-c8axto",
            storageBucket: "petter-app-c8axto.appspot.com",
            messagingSenderId: "971587028093",
            appId: "1:971587028093:web:55920eb73d82e368addd14"));
  } else {
    await Firebase.initializeApp();
  }
}
