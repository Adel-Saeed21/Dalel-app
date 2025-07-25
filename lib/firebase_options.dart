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
    apiKey: 'AIzaSyCgqQUDjVnUpoZvDHAv-UoiaBu9Soz8ZOA',
    appId: '1:68620154233:web:0a30681237a64399e9aba8',
    messagingSenderId: '68620154233',
    projectId: 'dalel-2f9d2',
    authDomain: 'dalel-2f9d2.firebaseapp.com',
    storageBucket: 'dalel-2f9d2.firebasestorage.app',
    measurementId: 'G-PVSEJ65XG3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCif6KmA4kz6uNK1uokI-Hsgy_9MtMJoZU',
    appId: '1:68620154233:android:ba0ced39b16a335fe9aba8',
    messagingSenderId: '68620154233',
    projectId: 'dalel-2f9d2',
    storageBucket: 'dalel-2f9d2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC73rPMMJYAgg0PgEFZClGVslHK8fI6ay0',
    appId: '1:68620154233:ios:9e2be714809264c0e9aba8',
    messagingSenderId: '68620154233',
    projectId: 'dalel-2f9d2',
    storageBucket: 'dalel-2f9d2.firebasestorage.app',
    iosBundleId: 'com.example.dalel',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC73rPMMJYAgg0PgEFZClGVslHK8fI6ay0',
    appId: '1:68620154233:ios:9e2be714809264c0e9aba8',
    messagingSenderId: '68620154233',
    projectId: 'dalel-2f9d2',
    storageBucket: 'dalel-2f9d2.firebasestorage.app',
    iosBundleId: 'com.example.dalel',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCgqQUDjVnUpoZvDHAv-UoiaBu9Soz8ZOA',
    appId: '1:68620154233:web:cf38d6ba1828aab8e9aba8',
    messagingSenderId: '68620154233',
    projectId: 'dalel-2f9d2',
    authDomain: 'dalel-2f9d2.firebaseapp.com',
    storageBucket: 'dalel-2f9d2.firebasestorage.app',
    measurementId: 'G-M7EJHJLEGP',
  );
}
