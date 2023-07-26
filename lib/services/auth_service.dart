import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jimpact/constant/error_handling.dart';
import 'package:jimpact/constant/utils.dart';
import 'package:jimpact/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:jimpact/constant/global_bariable.dart';
import 'package:jimpact/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jimpact/home/screens/account_setup.dart';

class AuthService {
  void signUpUser({
    required BuildContext context,
    required String firstName,
    required String lastName,
    required String userName,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
          id: '',
          firstName: firstName,
          lastName: lastName,
          userName: userName,
          email: email,
          password: password,
          access: '',
          refreshToken: '');

      http.Response res = await http.post(
        Uri.parse("$uri/register/"),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
        response: res,
        context: context,
        onsuccess: () {
          showSnackBar(context, "account created", Colors.green);
          //   showDialog(
          //       context: context,
          //       builder: (context) => AlertDialog(
          //             content: Column(
          //               children: [
          //                 const SizedBox(height: 30.0),
          //                 Image.asset("assets/Succesful Registration.png"),
          //                 const SizedBox(height: 30.0),
          //                 const Text(
          //                   'Successful Registration',
          //                   style: TextStyle(
          //                     fontSize: 22,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 const SizedBox(height: 30.0),
          //                 const Text(
          //                   'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
          //                   style: TextStyle(
          //                     fontSize: 18.0,
          //                     fontWeight: FontWeight.w500,
          //                     color: Colors.black54,
          //                   ),
          //                   textAlign: TextAlign.center,
          //                 ),
          //                 const SizedBox(height: 30.0),
          //                 TextButton(
          //                   style: ButtonStyle(
          //                       backgroundColor:
          //                           MaterialStateProperty.all<Color>(Colors.red),
          //                       foregroundColor:
          //                           MaterialStateProperty.all(Colors.white),
          //                       shape: MaterialStateProperty.all<
          //                           RoundedRectangleBorder>(
          //                         RoundedRectangleBorder(
          //                             side: const BorderSide(color: Colors.white),
          //                             borderRadius: BorderRadius.circular(15.0)),
          //                       ),
          //                       fixedSize: MaterialStateProperty.all<Size>(
          //                         const Size(150,
          //                             50), // Set the desired width and height
          //                       ),
          //                       padding: MaterialStateProperty.all(
          //                           const EdgeInsets.all(15.0))),
          //                   onPressed: () {},
          //                   child: const Row(
          //                     children: [
          //                       Text(
          //                         "Proceed",
          //                         style: TextStyle(
          //                           fontSize: 15.0,
          //                           fontWeight: FontWeight.bold,
          //                         ),
          //                       ),
          //                       SizedBox(width: 13.0),
          //                       Icon(
          //                         Icons.arrow_forward,
          //                         size: 20.0,
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ));
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString(), Colors.red);
    }
  }

  void signInUser({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      http.Response res = await http.post(
        Uri.parse("$uri/login/"),
        body: jsonEncode({"email": email, "password": password}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      httpErrorHandle(
          response: res,
          context: context,
          onsuccess: () async {
            // showSnackBar(  context, "Login was successful", Colors.green);
            SharedPreferences prefs = await SharedPreferences.getInstance();
            Provider.of<UserProvider>(context, listen: false).setUser(res.body);
            await prefs.setString(
                'x-auth-token', jsonDecode(res.body)['access']);
            // await prefs.setString(
            //     "x-atuh-refresh-token", jsonDecode(res.body)['refresh']);
            Navigator.pushNamedAndRemoveUntil(
              context,
              AccountSetUp.routeName,
              (route) => false,
            );
          });
      // print(res.body);
    } catch (e) {
      showSnackBar(context, e.toString(), Colors.black54);
    }
  }

  void getUserData({
    required BuildContext context,
  }) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("x-auth-token");
      if (token == null) {
        prefs.setString("x-auth-token", "");
      }

      // print(token);

      var tokenRes = await http.post(
        Uri.parse('$uri/api/token/verify/'),
        body: jsonEncode({"token": token!}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          // 'x-auth-token': token!
        },
      );

      // var response = jsonDecode(tokenRes.body);
      if (tokenRes.statusCode == 200) {
        // get user data
        http.Response userRes = await http.get(
          Uri.parse('$uri/profile/'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'Bearer $token'
          },
        );

        print(userRes.body);

        var userProvider = Provider.of<UserProvider>(context, listen: false);

        userProvider.setUser(userRes.body);
      }
    } catch (e) {
      showSnackBar(context, e.toString(), Colors.black54);
    }
  }
}


// void getTopics({
  
// })
