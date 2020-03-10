import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/dummy_data.dart';
import 'package:travel_app/models/travel.dart';
import 'package:travel_app/travel_item.dart';

class CategoryTravelsScreen extends StatelessWidget {
  
  static const routeName = './category-travels-screen';

  //final String categoryId;
  //final String categoryTitle;

  //CategoryTravelsScreen(this.categoryId,this.categoryTitle);


  @override
  Widget build(BuildContext context) {

    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];

    final categoryTravels = DUMMY_TRAVELS.where((travel) {
      return travel.categories.contains(categoryId);
    }).toList() ;

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return TravelItem(
            id: categoryTravels[index].id,
            title: categoryTravels[index].title,
            image: categoryTravels[index].image,
            accesibilidad: categoryTravels[index].accesibilidad,
            planes: categoryTravels[index].planes,
          );
        },
        itemCount: categoryTravels.length,
        ),
    );
  }
}