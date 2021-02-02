import 'package:flutter/material.dart';
import 'package:laundry_app_ytp/models/order.dart';
import 'package:laundry_app_ytp/utils/constants.dart';
import 'package:laundry_app_ytp/widgets/order_card.dart';

class LatestOrders extends StatelessWidget {
  final List<Order> orders = [
    Order(
      id: 507,
      deliveryAddress: "New Times Square",
      arrivalDate: DateTime(2020, 1, 23),
      placeDate: DateTime(2020, 1, 17),
      status: OrderStatus.DELIVERING,
    ),
    Order(
      id: 536,
      deliveryAddress: "Victoria Square",
      arrivalDate: DateTime(2020, 1, 21),
      placeDate: DateTime(2020, 1, 19),
      status: OrderStatus.PICKING_UP,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Latest Orders",
                  style: TextStyle(
                    color: Color.fromRGBO(19, 22, 33, 1),
                    fontSize: 18,
                  ),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                    color: Constants.primaryColor,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return OrderCard(
                order: orders[index]
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: orders.length,
          ),
        ],
      ),
    );
  }
 
}