import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCq-tI1MgQVNquBVy670Rg2-OPf3GkbLCg",
            authDomain: "for-aplay-muti7l.firebaseapp.com",
            projectId: "for-aplay-muti7l",
            storageBucket: "for-aplay-muti7l.appspot.com",
            messagingSenderId: "912651817030",
            appId: "1:912651817030:web:86c55b37fd664e41ab3a47"));
  } else {
    await Firebase.initializeApp();
  }
}
