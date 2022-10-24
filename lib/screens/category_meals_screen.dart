import 'package:flutter/material.dart';
import 'package:profile_task/dummy_data.dart';
import 'package:profile_task/models/category.dart';
import 'package:profile_task/models/meal.dart';
import 'package:profile_task/widgets/meal_widget.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Category category = ModalRoute.of(context)!.settings.arguments as Category;
    List<Meal> meals = DUMMY_MEALS
        .where(((element) => element.categories.contains(category.id)))
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('${category.title} Meals'),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_rounded),
        ),
      ),
      body: Container(
        // padding: EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          itemCount: meals.length,
          itemBuilder: ((context, index) {
            return MealWidget(
              meal: meals[index],
            );
          }),
        ),
      ),
    );
  }
}
