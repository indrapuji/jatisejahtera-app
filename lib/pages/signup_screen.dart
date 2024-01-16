import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/components/back_header.dart';
import 'package:jatisejahtera/components/dropdown_text_field.dart';
import 'package:jatisejahtera/components/input_text_field.dart';
import 'package:jatisejahtera/components/static_button.dart';
import 'package:jatisejahtera/pages/login_screen.dart';
import 'package:jatisejahtera/pages/success_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const BackHeader(headerTitle: 'SignUp'),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Text(
                      'Daftarkan dirimu untuk mendapatkan manfaat lebih!',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: primaryColor),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: InputTextField(hintText: 'Nama'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: InputTextField(hintText: 'NIP'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: InputTextField(
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: DropDownTextField()),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: InputTextField(
                      hintText: "Username",
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: InputTextField(
                      hintText: 'Password',
                      isObscureText: true,
                      suffixIcon: Icon(
                        Icons.visibility_off,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 32),
                    child: StaticButton(
                        text: 'Daftar',
                        backgroundColor: primaryColor,
                        colorText: Colors.white,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const SuccessScreen(
                              imageLogo: 'assets/image/registration.png',
                              titleText: 'Registrasi Berhasil',
                              descText:
                                  'Yeay! Pendaftaranmu berhasil! Update datamu untuk dapat mengajukan klaim.',
                            );
                          }));
                        }),
                  )
                ],
              ),
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
      ),
    );
  }
}
