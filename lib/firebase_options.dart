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
    apiKey: 'AIzaSyAHmEa54wnregWEI-Fh-R1zVvwcioPv19g',
    appId: '1:850560203567:web:c7a8c729e6e6cf69c8bfda',
    messagingSenderId: '850560203567',
    projectId: 'project-ppb-anjayy-kelazz',
    authDomain: 'project-ppb-anjayy-kelazz.firebaseapp.com',
    storageBucket: 'project-ppb-anjayy-kelazz.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD3dd2voVDeTOVGVQMg0BxENFZq-npggDo',
    appId: '1:850560203567:android:0652c7d22183c9adc8bfda',
    messagingSenderId: '850560203567',
    projectId: 'project-ppb-anjayy-kelazz',
    storageBucket: 'project-ppb-anjayy-kelazz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCitTO0fsHkkA74DCWlc2LjelcSefT-dgM',
    appId: '1:850560203567:ios:b846c1240eff42e9c8bfda',
    messagingSenderId: '850560203567',
    projectId: 'project-ppb-anjayy-kelazz',
    storageBucket: 'project-ppb-anjayy-kelazz.appspot.com',
    iosBundleId: 'com.google.firebase.presents.projectPpb',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCitTO0fsHkkA74DCWlc2LjelcSefT-dgM',
    appId: '1:850560203567:ios:b846c1240eff42e9c8bfda',
    messagingSenderId: '850560203567',
    projectId: 'project-ppb-anjayy-kelazz',
    storageBucket: 'project-ppb-anjayy-kelazz.appspot.com',
    iosBundleId: 'com.google.firebase.presents.projectPpb',
  );
}
