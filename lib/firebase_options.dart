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
    apiKey: 'AIzaSyBoFmpvy8NGfUcwPgSy_jOO-QOGgXhXXyM',
    appId: '1:661792549133:web:9393c7c06fb00bc7676844',
    messagingSenderId: '661792549133',
    projectId: 'tontineo',
    authDomain: 'tontineo.firebaseapp.com',
    storageBucket: 'tontineo.appspot.com',
    measurementId: 'G-ZMEC7EBDRB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBH6kS2ftSED4fjH6FuctOFwcri-x33v6k',
    appId: '1:661792549133:android:b61371ed052b30ea676844',
    messagingSenderId: '661792549133',
    projectId: 'tontineo',
    storageBucket: 'tontineo.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRpH6fD8mW-k85R_0N6J_GVsNINDksqSU',
    appId: '1:661792549133:ios:ddf3b0325980af9a676844',
    messagingSenderId: '661792549133',
    projectId: 'tontineo',
    storageBucket: 'tontineo.appspot.com',
    iosBundleId: 'com.example.tontineoMobileApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRpH6fD8mW-k85R_0N6J_GVsNINDksqSU',
    appId: '1:661792549133:ios:79969edd84464951676844',
    messagingSenderId: '661792549133',
    projectId: 'tontineo',
    storageBucket: 'tontineo.appspot.com',
    iosBundleId: 'com.example.tontineoMobileApp.RunnerTests',
  );
}
