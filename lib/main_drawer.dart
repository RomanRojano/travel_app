import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/categories_screen.dart';
import './screens/nosotros_screen.dart';
import './screens/promociones_screen.dart';


class MainDrawer extends StatelessWidget {
  
Widget buildListTile (String title, IconData icon, Function tapHandler) {
  return ListTile(
    leading: Icon(
      icon,
      size: 26,
    ),
    title: Text(
      title,
      style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    onTap: tapHandler,
  );
}
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).primaryColor,
            child: Text(
              'Menu',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Inicio', Icons.home, () {
            Navigator.of(context).pushNamed(HomePageScreen.routeName);
          }),
          buildListTile('Nosotros', Icons.face, () {
            Navigator.of(context).pushNamed(NosotrosScreen.routeName);
          }),
          buildListTile('Promociones', Icons.flight, () {
            Navigator.of(context).pushNamed(PromocionesScreen.routeName);
          })
        ],
      ),
    );
  }
}