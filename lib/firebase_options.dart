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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCkf1NJXXMQQzvv4PLBNgnwBiQTpWfPl5c',
    appId: '1:273403326461:web:004e633d94d84c4c48f394',
    messagingSenderId: '273403326461',
    projectId: 'navbus-21044',
    authDomain: 'navbus-21044.firebaseapp.com',
    storageBucket: 'navbus-21044.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDOOb2nlxwaDKVgUzk90SNsixTGWMyfuRg',
    appId: '1:273403326461:android:b2ca3268e586386948f394',
    messagingSenderId: '273403326461',
    projectId: 'navbus-21044',
    storageBucket: 'navbus-21044.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4pc3WbF-PGdfPlxB3DgmNhsMxg7UgilY',
    appId: '1:273403326461:ios:3abaed4633a562ae48f394',
    messagingSenderId: '273403326461',
    projectId: 'navbus-21044',
    storageBucket: 'navbus-21044.appspot.com',
    iosBundleId: 'com.example.iqraNavbusApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4pc3WbF-PGdfPlxB3DgmNhsMxg7UgilY',
    appId: '1:273403326461:ios:3abaed4633a562ae48f394',
    messagingSenderId: '273403326461',
    projectId: 'navbus-21044',
    storageBucket: 'navbus-21044.appspot.com',
    iosBundleId: 'com.example.iqraNavbusApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCkf1NJXXMQQzvv4PLBNgnwBiQTpWfPl5c',
    appId: '1:273403326461:web:6128d5f00e29d54c48f394',
    messagingSenderId: '273403326461',
    projectId: 'navbus-21044',
    authDomain: 'navbus-21044.firebaseapp.com',
    storageBucket: 'navbus-21044.appspot.com',
  );
}