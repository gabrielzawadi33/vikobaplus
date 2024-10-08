// import 'package:flutter/material.dart';
// import '../widgets/meal_item.dart';
// import '../dummy_data.dart';

// /// A screen that displays a list of meals for a specific category.
// class CategoryMealsScreen extends StatelessWidget {
//   /// The route name for this screen.
//   static const routeName = '/category-meals';

//   /// Builds the widget for this screen.
//   ///
//   /// Takes the provided [context] and extracts the arguments from the modal
//   /// route, which should be a map containing the 'title' and 'id' keys for the
//   /// category title and ID, respectively. It then filters the dummy meals list
//   /// to only include those that match the given category ID, and displays them
//   /// in a list view.
//   @override
//   Widget build(BuildContext context) {
//     final routeArgs =
//         ModalRoute.of(context)?.settings.arguments as Map<String, String>;
//     final categoryTitle = routeArgs['title'];
//     final categoryId = routeArgs['id'];
//     final categoryMeals = DUMMY_MEALS.where((meal) {
//       return meal.categories.contains(categoryId);
//     }).toList();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(categoryTitle!), // BEGIN: Uncomment this line
//       ),
//       body: ListView.builder(
//         itemBuilder: (ctx, index) {
//           return MealItem(
//             id: categoryMeals[index].id,
//             title: categoryMeals[index].title,
//             imageUrl: categoryMeals[index].imageUrl,
//             duration: categoryMeals[index].duration,
//             affordability: categoryMeals[index].affordability,
//             complexity: categoryMeals[index].complexity,
//           );
//         },
//         itemCount: categoryMeals.length,
//       ),
//     );
//   }
// }