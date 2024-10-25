// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCmuwYUZh9ePP7qSNDIU7akLyxClYcIjtg',
    appId: '1:482911337479:web:baf4453a1636b6954c3ea2',
    messagingSenderId: '482911337479',
    projectId: 'chatapp-luna',
    authDomain: 'chatapp-luna.firebaseapp.com',
    storageBucket: 'chatapp-luna.appspot.com',
    measurementId: 'G-13JV1V9Z9T',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDeLZ_e8OX6f99qMK-lkySscOUSLxlQ1Ic',
    appId: '1:482911337479:android:487125e2c74669234c3ea2',
    messagingSenderId: '482911337479',
    projectId: 'chatapp-luna',
    storageBucket: 'chatapp-luna.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC18SswRNdTy9K2bHm5fn1fss7PX6nVNFk',
    appId: '1:482911337479:ios:b2afe86a408ad9244c3ea2',
    messagingSenderId: '482911337479',
    projectId: 'chatapp-luna',
    storageBucket: 'chatapp-luna.appspot.com',
    iosBundleId: 'com.pcps.flutterprojectlab1.lab1',
  );
}