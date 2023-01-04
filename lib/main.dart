import 'dart:io';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      initialRoute: '/',
      routes: {
        // '/': (context) => const LoginPage(),
        // "/login": (context) => const LoginValidate(),
        '/forgotPassword': (context) => const ForgotPassword(),
        // '/successRegister': (context) => const SuccessRegister(),
        // '/successReset': (context) => const SuccessReset(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            // First child widget
            Image.asset('images/login.jpg'),
            // Second child widget, overlaps the first child
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    )
                  ],
                  color: Colors.white,
                ),
                width: 330,
                height: 350,
                // color: Colors.blue,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 10,
                        top: 30,
                        left: 15,
                        right: 15,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama',
                          labelText: 'Nama',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: const BorderSide()),
                        ),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 5,
                        // top: 10,
                        left: 15,
                        right: 15,
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: const BorderSide()),
                        ),
                        style: const TextStyle(fontSize: 15),
                      ),
                    ),
                    const Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    const Text(''),
                    SizedBox(
                      height: 50,
                      width: 160,
                      child: ElevatedButton(
                        onPressed: () {
                          const Text('Ditekan');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          textStyle: const TextStyle(
                            fontSize: 19,
                          ),
                        ),
                        child: const Text("Login"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
