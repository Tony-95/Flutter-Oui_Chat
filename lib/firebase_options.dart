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
    apiKey: 'AIzaSyAly519KVWjwTwgDw4PfdtMsZa7MOO8GfQ',
    appId: '1:9748766748:web:1a6aab12b7fc2c5255bfd9',
    messagingSenderId: '9748766748',
    projectId: 'fluttermsg-d0253',
    authDomain: 'fluttermsg-d0253.firebaseapp.com',
    storageBucket: 'fluttermsg-d0253.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB199P9DW9Zom7IGR9k-gUHAzIZjcuWn6o',
    appId: '1:9748766748:android:bf4c4f630e693cb555bfd9',
    messagingSenderId: '9748766748',
    projectId: 'fluttermsg-d0253',
    storageBucket: 'fluttermsg-d0253.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCM3fvzwXnKNISgQVf71XfcqEJ_abTPhbI',
    appId: '1:9748766748:ios:7a389613b850310355bfd9',
    messagingSenderId: '9748766748',
    projectId: 'fluttermsg-d0253',
    storageBucket: 'fluttermsg-d0253.appspot.com',
    iosBundleId: 'com.example.ouiChat',
  );
}
