import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/screens/home.dart';
import 'package:graduation_project/screens/login/signIn.dart';
import 'package:graduation_project/validators/validation.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/images_string.dart';
import '../../utils/constants/text_string.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  Widget _buildTextFormField({
    required TextEditingController controller,
    required String hintText,
    required IconData icon,
    required String? Function(String?) validator,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: TColors.textFieldsColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color:  TColors.blackF, fontSize: 16),
          prefixIcon: Icon(icon, color:  TColors.blackF),
          suffixIcon: suffixIcon,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          errorStyle: const TextStyle(
            color: TColors.error,
            fontSize: 12,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColors.primaryBackground,
      body: Stack(
        children: [
          //Image
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(TImages.flower, width: 267, height: 337),
          ),
          // title , subtitle
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 320),

                  Text(
                    TTexts.title1,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300,
                      color: TColors.black,
                      fontFamily: "LibreBaskerville",
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    TTexts.subTitle,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      color: TColors.primary,
                      fontFamily: "LibreBaskerville",
                    ),
                  ),

                  const SizedBox(height: 25),
                  //Form
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 65,
                          child: _buildTextFormField(
                            controller: _emailController,
                            hintText: 'Email',
                            icon: Icons.email_outlined,
                            //   validator: _validateEmail,
                            validator: TValidator.validateEmail,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 65,
                          child: _buildTextFormField(
                            controller: _usernameController,
                            hintText: 'Username',
                            icon: Icons.person_outline,
                            validator: TValidator.validateUsername,
                          ),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 65,
                          child: _buildTextFormField(
                            controller: _passwordController,
                            hintText: 'Password',
                            icon: Icons.lock_outline,
                            //  validator: _validatePassword,
                            validator: TValidator.validatePassword,

                            obscureText: _isPasswordHidden,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: const Color(0xFF666666),
                              ),
                              onPressed: () {
                                setState(() {
                                  _isPasswordHidden = !_isPasswordHidden;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        //confirm msg
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              TTexts.confirm_msg,
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: TColors.primary,
                                fontFamily: "LibreBaskerville",
                              ),
                            ),
                            SizedBox(width: 16),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignInScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: TColors.black,
                                  fontFamily: "LibreBaskerville",
                                ),
                              ),
                            ),
                          ],
                        ),
                        //Register Btn
                        const SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 65,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HomeScreen(),
                                  ),
                                );
                              } else {
                                // check each field individually to identify where the problem is
                                String? emailError = TValidator.validateEmail(
                                  _emailController.text,
                                );
                                String? usernameError =
                                    TValidator.validateUsername(
                                      _usernameController.text,
                                    );
                                String? passwordError =
                                    TValidator.validatePassword(
                                      _passwordController.text,
                                    );

                                String firstErrorMessage =
                                    emailError ??
                                    usernameError ??
                                    passwordError ??
                                    'Please check the form';
                              }
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor: TColors.buttonPrimary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              elevation: 0,
                            ),
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: TColors.primaryBackground,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
