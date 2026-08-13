import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/constants/cubits/themestates.dart';
import 'package:chatapp/repo/bottomnavigator/bottomnavigatorscreen.dart';
import 'package:chatapp/repo/chats/chats_screen.dart';
import 'package:chatapp/repo/screens/onboarding/onboardingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/theme_color.dart';

void main() {
  runApp( BlocProvider(
      create: (_)=>ThemeCubit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit,Themestates>(
      builder: (context,state){
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: state is LightThemeStates? Appthemes.lightTheme:Appthemes.DarkTheme,
          home: Onboardingscreen(),
        );
      }
    );
  }
}
