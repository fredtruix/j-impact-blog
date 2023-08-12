import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // await RegisterAdapters.initializeBDAndRegisterAdapters();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: false,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title:'Jesus Impact',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
              useMaterial3: true,
            ),
            home: const Scaffold(),
          );
        });
  }
}
