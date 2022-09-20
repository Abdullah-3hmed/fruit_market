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
    apiKey: 'AIzaSyAGh5kTu51njQM6QbKvF0Hmn8BxehfIg5M',
    appId: '1:857969737074:web:2721738e7901249eb031eb',
    messagingSenderId: '857969737074',
    projectId: 'fruit-market-9eb20',
    authDomain: 'fruit-market-9eb20.firebaseapp.com',
    storageBucket: 'fruit-market-9eb20.appspot.com',
    measurementId: 'G-C502G1LHS0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBFSSVV2hKbo8NyC1ph4emsMmfYe9O-hms',
    appId: '1:857969737074:android:42f723894965bcedb031eb',
    messagingSenderId: '857969737074',
    projectId: 'fruit-market-9eb20',
    storageBucket: 'fruit-market-9eb20.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCvcO_L7mta6Ioq68OJOX2y3eq8eeLBNEM',
    appId: '1:857969737074:ios:5d767634aa57047db031eb',
    messagingSenderId: '857969737074',
    projectId: 'fruit-market-9eb20',
    storageBucket: 'fruit-market-9eb20.appspot.com',
    iosClientId: '857969737074-bke9c2cfd4dsvotp9eo5uuvqd9235g4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.fruitMarket',
  );
}