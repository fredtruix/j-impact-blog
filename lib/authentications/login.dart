import 'package:flutter/material.dart';
import 'package:jimpact/component/custom_textfield.dart';
import 'package:jimpact/services/auth_service.dart';

class AuthLogin extends StatefulWidget {
  static const String routeName = "/auth-login";
  const AuthLogin({Key? key}) : super(key: key);

  @override
  State<AuthLogin> createState() => _AuthLoginState();
}

class _AuthLoginState extends State<AuthLogin> {
  final _signInFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passWordController.dispose();
  }

  void signInUser() {
    authService.signInUser(
        context: context,
        email: _emailController.text,
        password: _passWordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.only(
            left: 25.0, right: 25.0, top: 100.0, bottom: 70.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sign in",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 60.0),
              Form(
                key: _signInFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CusTomTextField(
                      controller: _emailController,
                      hintText: "Email",
                    ),
                    const SizedBox(height: 20.0),
                    CusTomTextField(
                      controller: _passWordController,
                      hintText: "Password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 20.0),
                    const Text("Forgot Password?"),
                  ],
                ),
              ),
              const SizedBox(height: 40.0),
              TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(15.0)),
                    ),
                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(150, 50), // Set the desired width and height
                    ),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(15.0))),
                onPressed: () {
                  if (_signInFormKey.currentState!.validate()) {
                    signInUser();
                  }
                },
                child: const Row(
                  children: [
                    Text(
                      "Get started",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.arrow_forward,
                      size: 20.0,
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 100.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xffEEECEC),
                          child: Container(
                            padding: const EdgeInsets.all(7.0),
                            child: const Image(
                                image: NetworkImage(
                                    "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png")),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        CircleAvatar(
                          backgroundColor: const Color(0xffEEECEC),
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: const Image(
                                image: NetworkImage(
                                    "https://cdn.icon-icons.com/icons2/1826/PNG/512/4202107facebookfblogosocialsocialmedia-115710_115591.png")),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        CircleAvatar(
                          backgroundColor: const Color(0xffEEECEC),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            child: const Image(
                                image: NetworkImage(
                                    "https://img.freepik.com/free-icon/twitter_318-674515.jpg")),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Row(
                      children: [
                        Text("Don’t have an account yet?"),
                        SizedBox(width: 2.0),
                        Text(
                          'Sign up',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
