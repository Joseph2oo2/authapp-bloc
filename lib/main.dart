import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thrash_threads/pages/home_page.dart';
import 'package:thrash_threads/pages/intro_page.dart';
import 'package:thrash_threads/features/authentication/views/login_page.dart';
import 'package:thrash_threads/features/authentication/views/register_page.dart';
import 'package:thrash_threads/pages/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'firebase_options.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute:"/splash",
      routes: {
        "/splash":(context) =>SplashPageWrapper(),
        "/intro":(context) => IntroPage(),
        "/login":(context) => LoginPageWrapper(),
        "/register":(context) => RegisterPageWrapper(),
        "/home":(context) => HomePageWrapper()
      },
    );
  }
}


