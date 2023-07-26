import 'package:flutter/material.dart';
import 'package:jimpact/component/account_button.dart';
import 'package:jimpact/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:jimpact/services/auth_service.dart';

class AccountSetUp extends StatefulWidget {
  static const String routeName = "/account-setup";
  const AccountSetUp({Key? key}) : super(key: key);

  @override
  State<AccountSetUp> createState() => _AccountSetUpState();
}

class _AccountSetUpState extends State<AccountSetUp> {
  final AuthService authservice = AuthService();
  @override
  void initState() {
    super.initState();
    authservice.getUserData(context: context);
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My interest"),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black45,
      ),
      body: Container(
        margin: const EdgeInsets.only(right: 25.0, left: 25.0, top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome ${user.userName}',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            const Text(
              "What are you interested in?",
              style: TextStyle(
                fontSize: 30.0,
                wordSpacing: 2.0,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 10.0),
            const Text(
              "Select 5 or more categories you are interested in",
              style: TextStyle(
                wordSpacing: 3.0,
                fontSize: 17.0,
                color: Colors.black45,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            GridView.count(
              crossAxisCount: 3,
              children: [
                AccountButton(text: "Faith", onTap: () {}),
                AccountButton(text: "Love", onTap: () {}),
                AccountButton(text: "Prayer", onTap: () {}),
              ],
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     AccountButton(
            //       text: "Faith",
            //       onTap: () {},
            //       padding: 20.0,
            //     ),
            //     AccountButton(text: "Love", onTap: () {}),
            //     AccountButton(text: "Prayer", onTap: () {}),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}