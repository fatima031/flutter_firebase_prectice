// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAnTyG9TmsuEK0xN9MbkEH7k2ROjnL-EcQ',
    appId: '1:891667859833:web:279c1deadb736bb3cb87a8',
    messagingSenderId: '891667859833',
    projectId: 'my-first-project-auth-63671',
    authDomain: 'my-first-project-auth-63671.firebaseapp.com',
    storageBucket: 'my-first-project-auth-63671.appspot.com',
    measurementId: 'G-5N8K37WHPF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBe-4o77CWyT17tiHt_6GhpTo6T_ZL9F3A',
    appId: '1:891667859833:android:06fb139ed1198ed8cb87a8',
    messagingSenderId: '891667859833',
    projectId: 'my-first-project-auth-63671',
    storageBucket: 'my-first-project-auth-63671.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDaoe0Uj0_CV_YJK7OSAhiXsXIdMnHsotA',
    appId: '1:891667859833:ios:cb4dad4c2991275bcb87a8',
    messagingSenderId: '891667859833',
    projectId: 'my-first-project-auth-63671',
    storageBucket: 'my-first-project-auth-63671.appspot.com',
    iosBundleId: 'com.example.online',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDaoe0Uj0_CV_YJK7OSAhiXsXIdMnHsotA',
    appId: '1:891667859833:ios:e019f77775df758ccb87a8',
    messagingSenderId: '891667859833',
    projectId: 'my-first-project-auth-63671',
    storageBucket: 'my-first-project-auth-63671.appspot.com',
    iosBundleId: 'com.example.online.RunnerTests',
  );
}
