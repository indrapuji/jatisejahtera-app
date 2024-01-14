import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/components/animate_button.dart';
import 'package:jatisejahtera/components/input_text_field.dart';
import 'package:jatisejahtera/components/static_button.dart';
// import 'package:jatisejahtera/pages/content_screen.dart';
// import 'package:jatisejahtera/pages/content_tab_screen.dart';
import 'package:jatisejahtera/pages/home_screen.dart';
import 'package:jatisejahtera/pages/login_screen.dart';
import 'package:jatisejahtera/pages/signup_screen.dart';
// import 'package:jatisejahtera/pages/test_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              opacity: 0.5,
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
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  child: Image.asset('assets/image/logo.png'),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        StaticButton(
                          text: "Explore",
                          backgroundColor: Colors.white,
                          colorText: primaryColor,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomeScreen();
                              // return ContentScreen();
                              // return ContentTabScreen();
                              // return const TestScreen();
                            }));
                          },
                        ),
                        const SizedBox(height: 12),
                        AnimateButton(
                          text: "Langsung Daftar",
                          backgroundColor: primaryColor,
                          colorText: Colors.white,
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Wrap(
                                  children: [
                                    const Stack(children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                            width: double.infinity,
                                            height: 35.0,
                                            child: Column(
                                              children: [
                                                SizedBox(height: 15),
                                                Text("Masukkan NIP")
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.black,
                                            height: 25,
                                            thickness: 1,
                                            indent: 5,
                                            endIndent: 5,
                                          ),
                                        ],
                                      )
                                    ]),
                                    const Padding(
                                      padding: EdgeInsets.only(
                                          left: 16, right: 16, top: 16),
                                      child: InputTextField(
                                        labelText: "NIP",
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 32,
                                          bottom: 32,
                                          left: 16,
                                          right: 16),
                                      child: StaticButton(
                                        backgroundColor: primaryColor,
                                        text: 'Cek',
                                        colorText: Colors.white,
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return const SignupScreen();
                                          }));
                                        },
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Sudah memiliki akun? ',
                                style: TextStyle(fontSize: 12)),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const LoginScreen();
                                }));
                              },
                              child: const Text(
                                'Masuk',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor),
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
