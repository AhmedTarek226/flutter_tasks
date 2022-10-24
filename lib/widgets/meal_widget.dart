import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealWidget extends StatelessWidget {
  Meal meal;
  MealWidget({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Container(
              height: 150,
              width: double.infinity,
              child: Image.network(meal.imageUrl, fit: BoxFit.fill)),
          Container(
            padding: EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        meal.title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          letterSpacing: 1,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '${meal.price.toInt()} EGP',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87),
                      ),
                    ],
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_shopping_cart_rounded,
                      size: 20,
                      color: Theme.of(context).primaryColor,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
