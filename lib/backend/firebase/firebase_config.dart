import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1x87_U56Htv2ChvsOJMX9wHwe-AvAgL4",
            authDomain: "ubicate-b3e52.firebaseapp.com",
            projectId: "ubicate-b3e52",
            storageBucket: "ubicate-b3e52.appspot.com",
            messagingSenderId: "833785531966",
            appId: "1:833785531966:web:310fb4174425d927f3cb6f"));
  } else {
    await Firebase.initializeApp();
  }
}
