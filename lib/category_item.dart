import 'package:flutter/material.dart';
import './screens/category_travels_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String catImage;
  
  CategoryItem(this.id,this.title, this.catImage);

  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      './category-travels-screen',
      arguments: {
        'id': id,
        'title': title,
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectCategory(context),
        splashColor: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(title, 
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              background: Paint()..color = Colors.black54,
            )
          ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage(catImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)
        ),
      ),
    );
  }
}