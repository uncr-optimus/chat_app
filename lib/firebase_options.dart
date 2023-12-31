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
    apiKey: 'AIzaSyCpYnniqOC12j6xMzxC3E4CKTVxboHEv_0',
    appId: '1:854694431133:web:d25ac113d08ee9b14bc774',
    messagingSenderId: '854694431133',
    projectId: 'flutter-chat-app-b5237',
    authDomain: 'flutter-chat-app-b5237.firebaseapp.com',
    databaseURL: 'https://flutter-chat-app-b5237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-chat-app-b5237.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC-3kw3D0aMYmX7i8VerkTLmMP9AN3iETc',
    appId: '1:854694431133:android:f0e9ba079a29a2804bc774',
    messagingSenderId: '854694431133',
    projectId: 'flutter-chat-app-b5237',
    databaseURL: 'https://flutter-chat-app-b5237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-chat-app-b5237.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC6dWDwivJc1566-fmK56lWnDD_eOgiJ_w',
    appId: '1:854694431133:ios:c537da9ba82b55b14bc774',
    messagingSenderId: '854694431133',
    projectId: 'flutter-chat-app-b5237',
    databaseURL: 'https://flutter-chat-app-b5237-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'flutter-chat-app-b5237.appspot.com',
    iosClientId: '854694431133-3oo1r3q4cdd30cfae1shqfd7t1evnt4q.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}
