import 'package:chatapp/constants/appcolors.dart';
import 'package:chatapp/constants/cubits/theme.dart';
import 'package:chatapp/repo/screens/widgets/Ui_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness==Brightness.dark? Appcolors.scaffloaddark:Appcolors.scaffloadlight,
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
            (UiHelper.CustomeText(text: 'Enter Your Phone Number', fontsize: 24, context: context,fontweight: FontWeight.bold)),
            SizedBox(height: 10),
            (UiHelper.CustomeText(text: 'Please confirm your country code and enter', fontsize: 14, context: context)),
            SizedBox(height: 5),
            (UiHelper.CustomeText(text: 'your phone number', fontsize: 14, context: context)),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  helperStyle: TextStyle(color: Colors.white70),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            UiHelper.CustomButton(buttonname: 'Continue', callback: (){}),
          ],
        ),
      ),
    );
  }
}
