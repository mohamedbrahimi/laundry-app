import 'package:flutter/material.dart';
import 'package:laundry_app_ytp/utils/constants.dart';
import 'package:laundry_app_ytp/utils/helper.dart';
import 'package:laundry_app_ytp/widgets/app_buttons.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3, 
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/cloth_faded.png")
                        )
                      ),
                    )
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/images/illustration.png",
                        scale: 1,
                        ),
                  )
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 24
                ),
                decoration: BoxDecoration(
                  color: Constants.scaffoldBakckgroundColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                  )
                ),
                child: SingleChildScrollView(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Text(
                      "Welcom to Laundree!",
                      style: Theme.of(context).textTheme.headline6.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(19, 22, 33, 1)
                      )
                    ),
                    SizedBox(height: 10),
                    Text(
                      "This is the first version of our laundry app. Please sign in or create an account below.",
                      style: TextStyle(
                        color: Color.fromRGBO(74, 77, 84, 1),
                        fontSize: 14
                      )
                    ),
                    SizedBox(
                      height: 40
                    ),
                    AppButton(
                      onPressed: () {
                        nextScreen(context, "/login");
                      },
                      text: "Log In",
                      type: ButtonType.PLAIN
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    AppButton(
                      text: "Create an Account",
                      type: ButtonType.PRIMARY
                    )
                  ],
                ),
                ) 
                )
            )
          ],
        ),
      )
    );
  }

}