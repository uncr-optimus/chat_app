import 'package:flutter/material.dart';
import 'package:chat_app/screens/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
//   options: const FirebaseOptions(
//   apiKey: " AIzaSyCpYnniqOC12j6xMzxC3E4CKTVxboHEv_0",
//   appId: "1:854694431133:android:f0e9ba079a29a2804bc774",
//   messagingSenderId: "854694431133",
//   projectId: "flutter-chat-app-b5237",
// ),
);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterChat',
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 63, 17, 177)),
      ),
      home: AuthScreen()
    );
  }
}