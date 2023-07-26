import 'package:flutter/material.dart';
import 'package:jimpact/authentications/login.dart';
import 'package:jimpact/authentications/register.dart';
// import 'package:jimpact/routes.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = "/auth-screen";
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black54,
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(100.0),
              child: const Text(
                "Let’s grow, connect and spread the revival fire",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(70.0, 0.0, 30.0, 200.0),
              child: Row(
                children: [
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
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(15.0))),
                    onPressed: () {
                      Navigator.pushNamed(context, AuthRegister.routeName);
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
                  const SizedBox(width: 20.0),
                  TextButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        foregroundColor: MaterialStateProperty.all(Colors.red),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.red),
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.all(15.0))),
                    onPressed: () {
                      Navigator.pushNamed(context, AuthLogin.routeName);
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Icon(
                          Icons.lock,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(50.0),
                child: Column(
                  children: [
                    const Text('or Sign up with'),
                    Container(
                      margin: const EdgeInsets.only(left: 80.0, top: 20.0),
                      child: Row(
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
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
