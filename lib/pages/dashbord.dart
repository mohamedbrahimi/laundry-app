import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app_ytp/utils/constants.dart';
import 'package:laundry_app_ytp/widgets/latest_orders.dart';
import 'package:laundry_app_ytp/widgets/location_slider.dart';

class Dashborad extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardState();
}

class _DashboardState extends State<Dashborad> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Constants.scaffoldBakckgroundColor,
        buttonBackgroundColor: Constants.primaryColor,
        items: [
          Icon(
            FlutterIcons.ios_home_ion,
            size: 30,
            color: activeIndex == 0 ? Colors.white : Color(0xFFC8C9CB),
          ),
          Icon(
            FlutterIcons.map_marker_radius_mco,
            size: 30,
            color: activeIndex == 1 ? Colors.white : Color(0xFFC8C9CB),
          ),
          Icon(
            FlutterIcons.plus_ant,
            size: 30,
            color: activeIndex == 2 ? Colors.white : Color(0xFFC8C9CB),
          ),
          Icon( 
            FlutterIcons.heart_fea,
            size: 30,
            color: activeIndex == 3 ? Colors.white : Color(0xFFC8C9CB),
          ),
          Icon(
            FlutterIcons.setting_ant,
            size: 30,
            color: activeIndex == 4 ? Colors.white : Color(0xFFC8C9CB),
          ),
        ],
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
      ),
      backgroundColor: Constants.primaryColor,
      body: Stack(
        overflow: Overflow.visible,
        children: [
          Positioned(
              right: 0,
              top: -20,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                    "assets/images/washing_machine_illustration.png"),
              )),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: kToolbarHeight),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(FlutterIcons.keyboard_backspace_mdi,
                              color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                  text: "Welcome Back, \n",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                TextSpan(
                                    text: "FlutterPanda!",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600)),
                              ]),
                            ),
                            Image.asset(
                              "assets/images/dp.png",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 200,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Constants.scaffoldBakckgroundColor),
                    padding: EdgeInsets.symmetric(
                      vertical: 24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            "New Location",
                            style: TextStyle(
                                color: Color.fromRGBO(19, 22, 33, 1),
                                fontSize: 18),
                          ),
                        ),
                        SizedBox(height: 7),
                        Container(
                            height: ScreenUtil().setHeight(100),
                            child: Center(
                              child: LocationSlider(),
                            )),
                        LatestOrders(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
