import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:laundry_app_ytp/utils/constants.dart';
import 'package:laundry_app_ytp/utils/helper.dart';
import 'package:laundry_app_ytp/widgets/app_buttons.dart';
import 'package:laundry_app_ytp/widgets/input_widget.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: SafeArea(
        bottom: false,
        child: Container(
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Positioned(
                right: 0,
                top: -20,
                child: Opacity(
                  opacity: 0.3,
                  child: Image.asset("assets/images/washing_machine_illustration.png",),
                )
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 15
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(
                            FlutterIcons.keyboard_backspace_mdi,
                            color: Colors.white
                          ),
                        ),
                        SizedBox(
                          height: 20
                        ),
                        Text(
                          "Log in to your account",
                          style: Theme.of(context).textTheme.headline6.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.white
                          )
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)
                        ),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.all(24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          InputWidget(
                            topLable: "Email",
                            hintText: "Enter your email address !"
                          ),
                          SizedBox(height: 25),
                          InputWidget(
                            topLable: "Password",
                            obsucreText: true,
                            hintText: "Enter your password !"
                          ),
                          SizedBox(height: 15),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Forgot Password ?",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Constants.primaryColor,
                                fontWeight: FontWeight.w600
                              ),
                            ),                            
                          ),
                          SizedBox(height: 15),
                          AppButton(
                            type: ButtonType.PRIMARY,
                            text: "Log In",
                            onPressed: () {
                              nextScreen(context, "/dashborad");
                            }
                          )
                        ],
                      )
                    )
                  )
                ],
              ),
            ],
          ),
        )
        )
    );
  }
  
}