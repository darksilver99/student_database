import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDypNTcOFEQ1vKO-IOSh-89lK4ZZC51rvY",
            authDomain: "studentdatabase-8e5fb.firebaseapp.com",
            projectId: "studentdatabase-8e5fb",
            storageBucket: "studentdatabase-8e5fb.appspot.com",
            messagingSenderId: "879004796994",
            appId: "1:879004796994:web:a84754c67ac5e5163f85db",
            measurementId: "G-1VP79CEN87"));
  } else {
    await Firebase.initializeApp();
  }
}
