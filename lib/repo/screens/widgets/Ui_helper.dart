import 'package:chatapp/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/constants/appcolors.dart';
import 'package:flutter/cupertino.dart';

class UiHelper {
  static CustomeImage({required String imageurl}) {
    return Image.asset('assets/images/$imageurl');
  }

  static CustomeText({
    required String text,
    required double fontsize,
    String? fontfamily,
    FontWeight? fontweight,
    Color? color,required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        fontFamily: fontfamily ?? 'regular',
        color: color ?? (Theme.of(context).brightness==Brightness.dark ? Appcolors.textdarkmode:Appcolors.textlightmode),
        fontWeight: fontweight ?? FontWeight.normal,
      ),
    );
  }

  static CustomButton({
    required String buttonname,
    required VoidCallback callback,
    Color? buttoncolor,
  }) {
    return SizedBox(
      height: 52,
      width: 327,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Appcolors.buttonlightmode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonname,
          style: TextStyle(
            fontSize: 16,
            color: buttoncolor,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
