import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile_task/dummy_data.dart';
import 'package:profile_task/models/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = DUMMY_CATEGORIES;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/category_meals",
                  arguments: categories[index]);
            },
            child: Card(
              elevation: 6,
              color: categories[index].color,
              child: Center(
                  child: Text(
                categories[index].title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )),
            ),
          );
        }),
      ),
    );
  }
}
