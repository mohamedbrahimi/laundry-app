import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundry_app_ytp/models/location.dart';

class LocationSlider extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

   List<Location> locations = [
    Location(
      address: "Kings Street 20",
      color: Color.fromRGBO(89, 69, 199, 1),
      state: "Bucharest",
      imagePath: "assets/images/house1.png"
    ),
     Location(
      address: "Victory Square 18",
      color: Color.fromRGBO(237, 116, 41, 1),
      state: "Bucharest",
      imagePath: "assets/images/house2.png"
    ),
  ]; 
  print(locations.length);
   return Container(   
     height: ScreenUtil().setHeight(90),
     child: ListView.separated(
       physics: BouncingScrollPhysics(),
       padding: EdgeInsets.symmetric( 
         horizontal: 24
        ),
        scrollDirection: Axis.horizontal,
       itemBuilder: (BuildContext context, int index) {
         return GestureDetector(
           onTap: () {},
           child: Container(
             width: ScreenUtil().setWidth(200),
             decoration: BoxDecoration(
               color: locations[index].color,
               borderRadius: BorderRadius.circular(8),
               boxShadow: [
                 BoxShadow(
                   color: Color.fromRGBO(169, 176, 185, 0.42),
                   spreadRadius: 0,
                   blurRadius: 8,
                   offset: Offset(0, 2)
                 ),
               ]
             ),
             padding: EdgeInsets.symmetric(
               vertical: 16,
               horizontal: 12,
             ),
             child: Stack(
               overflow: Overflow.visible,
               children: [
                 Positioned(
                   right: -16,
                   top: 0,
                   child: Opacity(
                     opacity: 0.69,
                     child: Image.asset(
                       locations[index].imagePath
                     ),
                   )
                 ),
                 RichText(
                   text: TextSpan(
                     children: [
                       TextSpan(
                         text: "${locations[index].address},\n",
                         style: TextStyle(
                           fontWeight: FontWeight.w600,
                           height: 1.5,
                           fontSize: 16
                         ),
                       ),
                       TextSpan(
                         text: locations[index].state,
                         style: TextStyle(
                           fontSize: 16
                         ),
                       ),
                     ]
                   ),
                   )
               ],
             ),
           ),
         );
       },
       separatorBuilder: (BuildContext context, int index) {
         return SizedBox(
           width: 15,
         );
       },
       itemCount: locations.length
     ),
   );
  }
  
}