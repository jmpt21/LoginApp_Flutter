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
    apiKey: 'AIzaSyDfdMfb-zOl088GGPIgfeg-vkea9bKYd5Q',
    appId: '1:815390264863:web:05e0d81f18f9e8f0430f2a',
    messagingSenderId: '815390264863',
    projectId: 'loginappflutter-96d85',
    authDomain: 'loginappflutter-96d85.firebaseapp.com',
    storageBucket: 'loginappflutter-96d85.appspot.com',
    measurementId: 'G-DV5LFNPEQM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHuznNIaQ0PPAON-StrsaACk-J5bzmr6s',
    appId: '1:815390264863:android:675cf193270544d9430f2a',
    messagingSenderId: '815390264863',
    projectId: 'loginappflutter-96d85',
    storageBucket: 'loginappflutter-96d85.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBXz6tqUHg3ezAFZmvvJG7O3vZumc7hrs4',
    appId: '1:815390264863:ios:5614ba8e5fe4e449430f2a',
    messagingSenderId: '815390264863',
    projectId: 'loginappflutter-96d85',
    storageBucket: 'loginappflutter-96d85.appspot.com',
    iosClientId: '815390264863-bri8mg2clpitlvta59gsk30r4n33rggb.apps.googleusercontent.com',
    iosBundleId: 'com.cdhidalgo.tecnm.mx.loginApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBXz6tqUHg3ezAFZmvvJG7O3vZumc7hrs4',
    appId: '1:815390264863:ios:bc3b7ed8c5fc2b8d430f2a',
    messagingSenderId: '815390264863',
    projectId: 'loginappflutter-96d85',
    storageBucket: 'loginappflutter-96d85.appspot.com',
    iosClientId: '815390264863-6386962if11t6poo2bf3vh33atj4hoon.apps.googleusercontent.com',
    iosBundleId: 'com.cdhidalgo.tecnm.mx.loginApp.RunnerTests',
  );
}