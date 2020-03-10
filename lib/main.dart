import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/categories_screen.dart';
import './screens/category_travels_screen.dart';
import './screens/travel_detail_screen.dart';
import './screens/nosotros_screen.dart';
import './screens/promociones_screen.dart';
import './screens/map_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TravelAgency',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        accentColor: Colors.deepOrange,
        canvasColor: Color.fromRGBO(230,255,252,1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
            color: Color.fromRGBO(20,51,51,1),
          ),
          body2: TextStyle(
            color: Color.fromRGBO(21,51,51,1),
          ),
        title: TextStyle(
          fontSize: 15,
          fontFamily: 'RobotoCondensed',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
     //home: HomePageScreen(),
     initialRoute: HomePageScreen.routeName,
     routes: {
       HomePageScreen.routeName: (ctx) => HomePageScreen(),
       CategoriesScreen.routeName: (ctx) => CategoriesScreen(),
       CategoryTravelsScreen.routeName : (ctx) => CategoryTravelsScreen(),
       TravelDetailScreen.routeName: (ctx) => TravelDetailScreen(),
       NosotrosScreen.routeName: (ctx) => NosotrosScreen(),
       PromocionesScreen.routeName: (ctx) => PromocionesScreen(),
       MapScreen.routeName: (ctx) => MapScreen(),
     },
    );
  }
}

