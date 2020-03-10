import 'package:flutter/material.dart';
import '../main_drawer.dart';

class PromocionesScreen extends StatelessWidget {

  static const routeName = '/promociones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promociones'),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text('Promociones'),
      ),
    );
  }
}