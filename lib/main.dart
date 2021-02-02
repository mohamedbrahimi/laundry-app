import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app_ytp/pages/dashbord.dart';
import 'package:laundry_app_ytp/pages/home.dart';
import 'package:laundry_app_ytp/pages/login.dart';
import 'package:laundry_app_ytp/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      allowFontScaling: false,
      child: MaterialApp(
        title: "Flutter Lanudry UI",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Constants.scaffoldBakckgroundColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: "/",
        onGenerateRoute: _onGenrateRoute,
      ),
    );
  }
}

Route<dynamic> _onGenrateRoute(RouteSettings settings) {
  switch(settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
     case "/login":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Login();
      });
     case "/dashborad":
      return MaterialPageRoute(builder: (BuildContext context) {
        return Dashborad();
      });
    default: 
       return MaterialPageRoute(builder: (BuildContext context) {
        return Home();
      });
  }
}