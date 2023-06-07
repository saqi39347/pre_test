import 'package:flutter/material.dart';
import 'package:pre_test/view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Change Color',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    gotoNextScreen();
  }

  void gotoNextScreen() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) => {
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
        const HomePage()), (Route<dynamic> route) => false)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.green.withOpacity(0.3),
              Colors.blue.withOpacity(0.2),
              Colors.red.withOpacity(0.3),
            ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app_icon.png', scale: 1.7,),
          ],
        ),
      ),
    );
  }
}

