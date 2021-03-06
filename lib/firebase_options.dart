// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
//  import 'firebase_options.dart';
//  // ...
//  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//  );
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
    apiKey: 'AIzaSyDXfG-RZfiUefFeLpRlxpPM0T9FSHjhX80',
    appId: '1:316783214458:web:e1060cb16e92ebb5aaa0c3',
    messagingSenderId: '316783214458',
    projectId: 'flutterfirebase-6a141',
    authDomain: 'flutterfirebase-6a141.firebaseapp.com',
    storageBucket: 'flutterfirebase-6a141.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPGfIY4Y1Keej6uToo4q9h93qv546zX6w',
    appId: '1:316783214458:android:b4dbc5fb7025e926aaa0c3',
    messagingSenderId: '316783214458',
    projectId: 'flutterfirebase-6a141',
    storageBucket: 'flutterfirebase-6a141.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCKef7Mj8YtbMMRMRpNwqbPKu8KvfyXqxA',
    appId: '1:316783214458:ios:f4267287bfeb0efbaaa0c3',
    messagingSenderId: '316783214458',
    projectId: 'flutterfirebase-6a141',
    storageBucket: 'flutterfirebase-6a141.appspot.com',
    iosClientId:
        '316783214458-a5nq1qk439lihmd00mec78t34u6pphb0.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseCrud',
  );
}
