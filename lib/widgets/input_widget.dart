
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app_ytp/utils/constants.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final double height;
  final String topLable;
  final bool obsucreText;

  InputWidget({
    this.hintText,
    this.prefixIcon,
    this.height = 48,
    this.topLable = "",
    this.obsucreText = false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(this.topLable),
         SizedBox(height: 5),
         Container(
           height: ScreenUtil().setHeight(height),
           decoration: BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(8)
           ),
           child: TextFormField(
             obscureText: this.obsucreText,
             decoration: InputDecoration(
               prefixIcon: this.prefixIcon == null
                        ? this.prefixIcon
                        : Icon(
                          this.prefixIcon,
                          color: Color.fromRGBO(105, 108, 121, 1)
                        ),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Color.fromRGBO(74, 77, 84, 0.2)
                 )
               ),
               focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(
                   color: Constants.primaryColor,
                 ),
               ),
               hintText: this.hintText,
               hintStyle: TextStyle(
                 fontSize: 14,
                 color: Color.fromRGBO(105, 108, 121, 0.7),
               ),
             ),
           ),
         )
       ],
    );
  }
  
}