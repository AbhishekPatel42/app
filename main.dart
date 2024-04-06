import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:loginui/firebase_options.dart';
import 'package:loginui/pages/splaceScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 204, 152, 213),
      ),

      home: SplashScreen(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Wrapper(),
      //   'login': (context) => LoginPage(context),
      //   'register': (context) => MyRegister(),
      //   'forgetpassword': (context) => forgetpassword(),
      //   'home': (context) => SplashScreen(),
      //   'splashScree': (context) => SplashScreen(),
      // },
    );
  }
}

class Wrapper extends StatefulWidget {
  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
