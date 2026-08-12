import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/screens/login/login_screen.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark? AppColors.scaffolddark:AppColors.scaffoldlight,
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<ThemeCubit>(context).toggletheme();
          }, icon: Icon(Icons.dark_mode_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           UiHelper.CustomImage(imgurl: 'Splash_Photo.png'),
            SizedBox(height: 20),
            UiHelper.CustomText(text: 'Connect easily with', fontsize: 24,fontfamily: 'bold',fontweight: FontWeight.bold,context: context),
            UiHelper.CustomText(text: 'your family and friends', fontsize: 24,fontfamily: 'bold',fontweight: FontWeight.bold,context: context),
            UiHelper.CustomText(text: 'over countries', fontsize: 24,fontfamily: 'bold',fontweight: FontWeight.bold,context: context),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(buttonnname: 'Start Messaging', callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
