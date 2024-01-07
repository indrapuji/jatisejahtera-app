import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/back_header.dart';
import 'package:jatisejahtera/components/input_text_field.dart';
import 'package:jatisejahtera/components/static_button.dart';
import 'package:jatisejahtera/pages/forgot_screen.dart';
import 'package:jatisejahtera/pages/home_screen.dart';
import 'package:jatisejahtera/pages/welcome_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              opacity: 0.2,
              image: AssetImage(
                'assets/image/background_jati.png',
              ),
              alignment: Alignment.topCenter)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                const BackHeader(headerTitle: 'Login'),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: InputTextField(
                          labelText: "Username",
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 32, right: 32),
                        child: InputTextField(
                          labelText: 'Password',
                          isObscureText: true,
                          suffixIcon: Icon(
                            Icons.visibility_off,
                            color: Color.fromARGB(255, 5, 150, 106),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ForgotScreen();
                          }));
                        },
                        child: Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.only(
                                left: 32, top: 8, bottom: 32),
                            child: const Text(
                              'Lupa Password',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 5, 150, 106)),
                            )),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        StaticButton(
                          text: "Log In",
                          backgroundColor:
                              const Color.fromARGB(255, 5, 150, 106),
                          colorText: Colors.white,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const HomeScreen();
                            }));
                          },
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Belum memiliki akun? ',
                                style: TextStyle(fontSize: 12)),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const WelcomeScreen();
                                }));
                              },
                              child: const Text(
                                'Daftar',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 5, 150, 106)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
