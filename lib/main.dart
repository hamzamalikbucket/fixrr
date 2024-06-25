import 'package:fixrr/resources/utils/app_colors.dart';
import 'package:fixrr/resources/utils/constants.dart';
import 'package:fixrr/screens/auth/fixrr_signup_screen.dart';
import 'package:fixrr/screens/choose_option_screen.dart';
import 'package:fixrr/screens/auth/user_signup_screen.dart';
import 'package:fixrr/screens/user/home_screen.dart';
import 'package:fixrr/screens/auth/login_screen.dart';
import 'package:fixrr/screens/user/post_job.dart';
import 'package:fixrr/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'screens/user/match_list.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          cardTheme: CardTheme(
            surfaceTintColor: Colors.white,
          ),
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.textBlue),
          useMaterial3: true,
        ),
        initialRoute: Constants.welcomeScreen,
        debugShowCheckedModeBanner: false,
        routes: {
          Constants.welcomeScreen: (context) => WelcomeScreen(),
          Constants.loginScreen: (context) => LoginScreen(),
          Constants.homeScreen: (context) => HomeScreen(),
          Constants.jobPost: (context) => const PostJob(jobName: "Job Name",),
          Constants.registerUserScreen: (context) => UserSignUpScreen(),
          Constants.registerFixrrScreen: (context) => FixrSignUpScreen(),
          Constants.chooseOptions: (context) => ChooseOptionScreen(),
          Constants.matchFinderScreen: (context) => MatchList(),


        }
    );
  }
}

