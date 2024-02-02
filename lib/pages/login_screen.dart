import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/components/back_header.dart';
import 'package:jatisejahtera/components/input_text_field.dart';
import 'package:jatisejahtera/components/static_button.dart';
import 'package:jatisejahtera/pages/forgot_screen.dart';
import 'package:jatisejahtera/pages/main_screen.dart';
// import 'package:jatisejahtera/pages/welcome_screen.dart';
import 'package:jatisejahtera/services/user_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  UserService userService = UserService();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
              fit: BoxFit.contain,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: InputTextField(
                          controller: _usernameController,
                          labelText: "Username",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, right: 32),
                        child: InputTextField(
                          controller: _passwordController,
                          labelText: 'Password',
                          isObscureText: true,
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: primaryColor,
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
                              style: TextStyle(color: primaryColor),
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
                          backgroundColor: primaryColor,
                          colorText: Colors.white,
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const MainScreen();
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
                                Navigator.pushNamed(context, '/mainpage');

                                // onTap: () async {
                                //   await userService.userLogin(
                                //       _usernameController.text,
                                //       _passwordController.text);

                                // if (response) {
                                //   Navigator.pushNamed(context, '/mainpage');
                                // } else {
                                //   Navigator.pop(context);
                                // }

                                // Navigator.push(context,
                                //     MaterialPageRoute(builder: (context) {
                                //   return const WelcomeScreen();
                                // }));
                              },
                              child: const Text(
                                'Daftar',
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
