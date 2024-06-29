import 'package:fixrr/resources/utils/app_colors.dart';
import 'package:fixrr/resources/utils/constants.dart';
import 'package:fixrr/screens/auth/fixrr_signup_screen.dart';
import 'package:fixrr/screens/auth/login_screen.dart';
import 'package:fixrr/screens/auth/user_signup_screen.dart';
import 'package:fixrr/screens/choose_option_screen.dart';
import 'package:fixrr/screens/fixrr/chat_partners.dart';
import 'package:fixrr/screens/fixrr/fixerr_home.dart';
import 'package:fixrr/screens/user/home_screen.dart';
import 'package:fixrr/screens/user/post_job.dart';
import 'package:fixrr/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          cardTheme: const CardTheme(
            surfaceTintColor: Colors.white,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.textBlue),
          useMaterial3: true,
        ),
        initialRoute: Constants.welcomeScreen,
        debugShowCheckedModeBanner: false,
        routes: {
          Constants.welcomeScreen: (context) => WelcomeScreen(),
          Constants.loginScreen: (context) => const LoginScreen(),
          Constants.homeScreen: (context) => const HomeScreen(),
          Constants.jobPost: (context) => const PostJob(
                jobName: "Job Name",
              ),
          Constants.registerUserScreen: (context) => UserSignUpScreen(),
          Constants.registerFixrrScreen: (context) => FixrSignUpScreen(),
          Constants.chooseOptions: (context) => ChooseOptionScreen(),
          Constants.fixerHomeScreen: (context) => const FixerHome(),
          Constants.partnerScreen: (context) => const ChatPartners(userName: "username"),
          // Constants.matchFinderScreen: (context) => MatchList(),
        });
  }
}
