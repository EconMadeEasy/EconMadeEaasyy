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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAKGVyVQ_yENRFfMsHXZ8BFaXodSLJFAv0',
    appId: '1:254072273691:web:c36b104f72b0cecb5d31be',
    messagingSenderId: '254072273691',
    projectId: 'made-easy-a99a4',
    authDomain: 'made-easy-a99a4.firebaseapp.com',
    storageBucket: 'made-easy-a99a4.appspot.com',
    measurementId: 'G-NF8WKVPL67',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF1CU7TtTZpYZTNpggAUO4Q0vf2HDT7_0',
    appId: '1:254072273691:android:d0dea0c53d6946225d31be',
    messagingSenderId: '254072273691',
    projectId: 'made-easy-a99a4',
    storageBucket: 'made-easy-a99a4.appspot.com',
  );
}
