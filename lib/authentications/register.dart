import 'package:flutter/material.dart';
import 'package:jimpact/component/custom_textfield.dart';
import 'package:jimpact/authentications/login.dart';

class AuthRegister extends StatefulWidget {
  static const String routeName = "/auth-register";
  const AuthRegister({Key? key}) : super(key: key);

  @override
  State<AuthRegister> createState() => _AuthRegisterState();

  void signUpUser({required BuildContext context}) {}
}

class _AuthRegisterState extends State<AuthRegister> {
  bool terms = false;
  final _signUpFormKey = GlobalKey<FormState>();


  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passWordController = TextEditingController();
  final TextEditingController _confirmPassController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _emailController.dispose();
    _passWordController.dispose();
    _confirmPassController.dispose();
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
        margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create a new account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 15.0),
              const Text(
                "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height: 30.0),
              Form(
                key: _signUpFormKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CusTomTextField(
                      controller: _firstNameController,
                      hintText: "First Name",
                    ),
                    const SizedBox(height: 20.0),
                    CusTomTextField(
                      controller: _lastNameController,
                      hintText: "Last Name",
                    ),
                    const SizedBox(height: 20.0),
                    Row(
                      children: [
                        Expanded(
                          child: CusTomTextField(
                            controller: _userNameController,
                            hintText: "Username",
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Expanded(
                          child: CusTomTextField(
                            controller: _emailController,
                            hintText: "Email",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    CusTomTextField(
                      controller: _passWordController,
                      hintText: "Password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 20.0),
                    CusTomTextField(
                      controller: _confirmPassController,
                      hintText: "Confirm password",
                      obscureText: true,
                    ),
                    const SizedBox(height: 60.0),
                    Row(
                      children: [
                        Radio(
                          activeColor: Colors.redAccent,
                          value: terms,
                          groupValue: terms,
                          onChanged: (bool? val) {
                            setState(() {
                              terms = val!;
                            });
                          },
                        ),
                        const Text("I agree to the"),
                        const Text(
                          'Terms of Service & Privacy Policy',
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30.0),
                    TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(15.0)),
                      ),
                      onPressed: () {
                        if (_signUpFormKey.currentState!.validate()) {
            
                          Navigator.pushNamed(context, AuthLogin.routeName);
                        }
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Get started",
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 200.0),
                          Icon(
                            Icons.arrow_forward,
                            size: 20.0,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
