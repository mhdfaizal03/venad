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
    apiKey: 'AIzaSyAvjJgVKACMaCZtAFIfHWGTvmpPeh2z6MA',
    appId: '1:334766464242:web:661c7ec041102a2e6a846b',
    messagingSenderId: '334766464242',
    projectId: 'venadu-60c82',
    authDomain: 'venadu-60c82.firebaseapp.com',
    storageBucket: 'venadu-60c82.appspot.com',
    measurementId: 'G-LMFVRMB0MG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3PUu2l4m5OMhZG4zZJRvIFwHNzGnQt_w',
    appId: '1:334766464242:android:20147bf4332d04b06a846b',
    messagingSenderId: '334766464242',
    projectId: 'venadu-60c82',
    storageBucket: 'venadu-60c82.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAX54Ly6A8slqUGGlnTChJX0PQY-p5-8qI',
    appId: '1:334766464242:ios:5a6dc1b27ce21fdb6a846b',
    messagingSenderId: '334766464242',
    projectId: 'venadu-60c82',
    storageBucket: 'venadu-60c82.appspot.com',
    iosBundleId: 'com.example.venad',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAX54Ly6A8slqUGGlnTChJX0PQY-p5-8qI',
    appId: '1:334766464242:ios:5a6dc1b27ce21fdb6a846b',
    messagingSenderId: '334766464242',
    projectId: 'venadu-60c82',
    storageBucket: 'venadu-60c82.appspot.com',
    iosBundleId: 'com.example.venad',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAvjJgVKACMaCZtAFIfHWGTvmpPeh2z6MA',
    appId: '1:334766464242:web:5e9648277a017a096a846b',
    messagingSenderId: '334766464242',
    projectId: 'venadu-60c82',
    authDomain: 'venadu-60c82.firebaseapp.com',
    storageBucket: 'venadu-60c82.appspot.com',
    measurementId: 'G-G7DN9RG07N',
  );
}
