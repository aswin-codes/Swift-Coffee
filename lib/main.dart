import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swift_coffee/screens/Home.dart';
import 'package:swift_coffee/screens/Item.dart';
import 'package:swift_coffee/screens/Splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Swift Cafe',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            useMaterial3: true,
            primarySwatch: Colors.brown,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => const SplashScreen(),
            '/': (context) =>  HomeScreen(),
            '/item' : (context) => ItemDetail(),
          },
        );
      },
    );
  }
}
