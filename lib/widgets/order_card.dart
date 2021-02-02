import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:laundry_app_ytp/models/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final DateFormat formatter = DateFormat("yyyy MM dd");
  OrderCard({this.order});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: ScreenUtil().setHeight(130),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color.fromRGBO(220, 233, 245, 1)
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 16
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getOrderIconWidget(order.status),
            SizedBox(
              width: 25,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                      getOrderStatusText(order.status),
                      style: TextStyle(
                        color: Color.fromRGBO(19, 22, 33, 1),
                        fontSize: 16,
                      ),
                   ),
                   SizedBox(
                     height: 10,
                   ),
                   textRow("Placed On", formatter.format(order.placeDate)),
                   SizedBox(
                     height: 5,
                   ),
                   textRow("Delivery On", formatter.format(order.arrivalDate)),
                ],
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget textRow(String textOne, String textTwo) {
   return Wrap(
     children: [
       Text(
         "$textOne:",
         style: TextStyle(
           color: Color.fromRGBO(74, 77, 84, 0.7),
           fontSize: 14,
         ),
       ),
       SizedBox(
         width: 14,
       ),
       Text(
         textTwo,
         style: TextStyle(
           color: Color.fromRGBO(19, 22, 33, 1),
           fontSize: 14,
         ),
       ),
     ],
   );
}

Widget getOrderIconWidget(OrderStatus status) {
  switch(status) {
    case OrderStatus.PICKING_UP: 
      return Container(
        width: ScreenUtil().setWidth(37),
        height: ScreenUtil().setHeight(37),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          FlutterIcons.loader_fea,
          color: Color.fromRGBO(221, 40, 81, 1)
        )
      );
    case OrderStatus.DELIVERING: 
      return Container(
        width: ScreenUtil().setWidth(37),
        height: ScreenUtil().setHeight(37),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(255, 99, 2, 0.15),
        ),
        child: Icon(
          FlutterIcons.history_mdi,
          color: Color.fromRGBO(255, 99, 2, 1)
        )
      );
    default:
      return Container(
        width: ScreenUtil().setWidth(37),
        height: ScreenUtil().setHeight(37),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromRGBO(221, 40, 81, 0.18),
        ),
        child: Icon(
          FlutterIcons.loader_fea,
          color: Color.fromRGBO(221, 40, 81, 1)
        )
      );
  } 
}
String getOrderStatusText(OrderStatus status) {
  switch(status) {
    case OrderStatus.DELIVERING: 
      return "Delivering Order";
    case OrderStatus.PICKING_UP: 
      return "Picking Up Order";

    default: return "";
  }
}