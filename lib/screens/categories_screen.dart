import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../category_item.dart';
import '../main_drawer.dart';


class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  static const routeName='./categories-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
        drawer: MainDrawer(),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map( (catData) => CategoryItem(
            catData.id,
            catData.title,
            catData.catImage
            ),
          )
          .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200 ,
          childAspectRatio: 3 /2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      )
    );
  }
}