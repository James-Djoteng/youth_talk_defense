import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA1VDs_4o9todFlewW9U_JZl1qnQEHP2_M",
            authDomain: "youthtalk-b88c4.firebaseapp.com",
            projectId: "youthtalk-b88c4",
            storageBucket: "youthtalk-b88c4.appspot.com",
            messagingSenderId: "1068229539308",
            appId: "1:1068229539308:web:f25bb68f98ec399d90fcc9"));
  } else {
    await Firebase.initializeApp();
  }
}
