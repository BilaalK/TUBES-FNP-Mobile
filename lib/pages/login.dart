import 'package:flutter/material.dart';
import 'package:fnp_tubes/components/text_field_input.dart';
import 'package:fnp_tubes/components/textfield_password.dart';
import 'package:fnp_tubes/pages/input_kandidat.dart';
import 'package:fnp_tubes/pages/list_peserta_kandidat.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usernamecontroler = TextEditingController();
  final TextEditingController _passwordctl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/image1.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 50),
                      Text(
                        'Login',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                      ),
                      const SizedBox(height: 200),
                      Container(
                        margin: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          children: [
                            TextFieldInput(
                                text: 'Username',
                                hint: 'Masukkan username anda',
                                controller: _usernamecontroler,
                                colornya: Colors.black),
                            const SizedBox(height: 20),
                            TextfieldPassword(
                                text: 'Passwords',
                                hint: 'Masukkan password anda',
                                controller: _passwordctl,
                                colornya: Colors.black),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  'Forgot Password?',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            _usernamecontroler.text == 'admin'
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const InputKandidat(),
                                    ),
                                  )
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ListPesertaKandidat(),
                                    ),
                                  );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            'Log In',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
