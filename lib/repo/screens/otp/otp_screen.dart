import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/profile/profile_screen.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  String phonenumber;
   OtpScreen({super.key, required this.phonenumber});
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme( //  Text Color
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20,
          color: Theme.of(context).brightness==Brightness.dark ? Colors.white: Colors.black,
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith( // BG Color
      color: Theme.of(context).brightness==Brightness.dark? AppColors.otpdarkmode:AppColors.otplightmode,
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith( // Theme Color
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness==Brightness.dark ? AppColors.otpdarkmode: AppColors.otplightmode,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark ? AppColors.scaffolddark : AppColors.scaffoldlight,
        actions: [
          IconButton(onPressed: (){
            BlocProvider.of<ThemeCubit>(context).toggletheme();
          }, icon: Icon(Icons.dark_mode_outlined)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            UiHelper.CustomText(text: 'Enter Code', fontsize: 24, context: context,fontweight: FontWeight.bold),
            SizedBox(height: 10),
            UiHelper.CustomText(text: 'We have sent you an SMS with code', fontsize: 14, context: context),
            SizedBox(height: 5),
            UiHelper.CustomText(text: 'to ${phonenumber}', fontsize: 14, context: context),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                },
                onSubmitted: (value){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
                }, // Work with Button
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
      TextButton(onPressed: (){}, child: Text('Resend Code',style: TextStyle(
        color: Theme.of(context).brightness==Brightness.dark ? AppColors.otptextdark : AppColors.otptextlight,
        fontSize: 16,
      ),)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

