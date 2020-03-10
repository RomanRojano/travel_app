import 'package:flutter/material.dart';
import 'package:travel_app/main_drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import '../screens/map_screen.dart';

class NosotrosScreen extends StatelessWidget {

  static const routeName = '/nosotros';

  @override
  Widget build(BuildContext context) {

    Widget image_carousel = new Container(
      height:  200,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/carousel/img_01.jpg'),
          AssetImage('images/carousel/img_02.jpg'),
          AssetImage('images/carousel/img_03.jpg'),
          AssetImage('images/carousel/img_04.jpg'),
          AssetImage('images/carousel/img_05.jpeg'),
        ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds:600),
      dotSize: 4.0,
      dotColor: Colors.blue,
      indicatorBgPadding: 4.0,
      ),
    );

    Widget buildTitleText(String title) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20,10,10,10),
          child: new Text(
            title,
            style: TextStyle(
              color: Colors.blue, fontSize: 20,fontWeight: FontWeight.bold),
          ),
        );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Nosotros'),
      ),
      drawer: MainDrawer(),
      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildTitleText('Contacto'),
              buildTitleText('Av. Triunfo de la Republica #410 Col. San Felipe'),
              buildTitleText('Tel. (555) 555-1212'),
              buildTitleText('viajesponchito@ponchiviajes.com'),
              buildTitleText('UBICACION'),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(MapScreen.routeName);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                elevation: 4,
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset('images/direccion.jpg',                          
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                  ],
                )
                )
              )
            ],
          ),
          ],
      ),
    );
  }
}