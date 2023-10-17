import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_shop/ui/screens/auth/signup/signin_screen.dart';
import 'package:steel_shop/ui/screens/home/home_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(

      builder: (BuildContext , Orientation , ScreenType ) {
        return  MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:const SignInScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}

