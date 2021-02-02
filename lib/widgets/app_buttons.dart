import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ytp/utils/constants.dart';

enum ButtonType {PRIMARY, PLAIN}

class AppButton extends StatelessWidget {
  final ButtonType type;
  final VoidCallback onPressed;
  final String text;

  AppButton({this.type, this.onPressed, this.text });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onPressed,
      child: Container(
        width: double.infinity,
        height: ScreenUtil().setHeight(48),
        decoration: BoxDecoration(
          color: getButtonColor(type),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(169, 176, 185, 1),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 2),
            )
          ]
          ),
          child: Center(
            child: Text(
            this.text,
            style: GoogleFonts.roboto(
              color: getTextColor(type),
              fontSize: 16,
              fontWeight: FontWeight.w500
            ),
          ),
          )
      ),
    );
            }
}

Color getButtonColor(ButtonType type) {
  switch(type) {
    case ButtonType.PLAIN: 
      return Colors.white;
    case ButtonType.PRIMARY: 
      return Constants.primaryColor;
    default: 
      return Constants.primaryColor;
  }
}

Color getTextColor(ButtonType type) {
  switch(type) {
    case ButtonType.PRIMARY: 
      return Colors.white;
    case ButtonType.PLAIN: 
      return Constants.primaryColor;
    default: 
      return Colors.white;
  }
}

