import 'package:flutter/material.dart';
import 'package:travel_app/screens/categories_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key key}) : super(key: key);

  static const routeName = 'home-screen';

  selectedCategories(BuildContext context){
    Navigator.of(context).pushNamed(CategoriesScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Travel Agency'),
       ),
       body: Container(
         child: Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              new Text('This is Home Page'),
              new RaisedButton(
                child: new Text('Press me'),
                color: Colors.blue,
                onPressed: () => selectedCategories(context), 
              )
             ],
           ),
         ),
         ),
    );
  }
}