import "package:flutter/material.dart";
import 'package:jimpact/data/data.dart';
import 'package:jimpact/home/screens/account_setup.dart';
import 'package:jimpact/providers/user_provider.dart';
import 'package:jimpact/routes.dart';
import 'package:jimpact/services/auth_service.dart';
import "dart:async";
import 'package:jimpact/slides/slider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => UserProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jesus impact",
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// splash screen routing
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService authservice = AuthService();

  @override
  void initState() {
    super.initState();
    authservice.getUserData(context: context);
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 10);
    return Timer(duration, route);
  }

// push to the next route
  route() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Provider.of<UserProvider>(context).user.userName.isNotEmpty
                    ? const AccountSetUp()
                    : const Screen()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Center(
        child: Image(
          image: AssetImage('assets/logo.png'),
          width: 100.0,
        ),
      )),
    );
  }
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<SliderModel> slides = <SliderModel>[];
  int currentIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getslider();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: currentIndex == slides.length - 1
          ? AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              leading: const InkWell(
                onTap: null,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black54,
                  size: 30.0,
                ),
              ),
              actions: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      pageController.animateToPage(slides.length - 1,
                          duration: const Duration(microseconds: 400),
                          curve: Curves.linear);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            )
          : AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              actions: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: GestureDetector(
                    onTap: () {
                      pageController.animateToPage(slides.length - 1,
                          duration: const Duration(microseconds: 400),
                          curve: Curves.linear);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
      body: SafeArea(
        child: PageView.builder(
            controller: pageController,
            itemCount: slides.length,
            onPageChanged: (val) {
              setState(() {
                currentIndex = val;
              });
            },
            itemBuilder: (context, index) {
              return SliderTitle(
                imagepath: slides[index].getImageAssetPath(),
                title: slides[index].getTitle(),
                description: slides[index].getDescription(),
              );
            }),
      ),
    );
  }
}
