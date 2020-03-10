import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import './models/travel.dart';
import './screens/travel_detail_screen.dart';


class TravelItem extends StatelessWidget {
  final String id;
  final List<String> categories;
  final String title;
  final List<String> priceTable;
  final List<String>  description;
  final Accesibilidad accesibilidad;
  final Planes planes;
  final String image;

  TravelItem({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.priceTable,
    @required this.description,
    @required this.accesibilidad ,
    @required this.planes,
    @required this.image
  });

String get accesibilidadText {
  switch (accesibilidad) {
    case Accesibilidad.Economico:
      return 'Economico';
      break ;
    case Accesibilidad.Medio:
      return 'Medio';
      break ;
    case Accesibilidad.Costoso:
      return 'Costoso';
      break ;
    default:
      return 'Desconocido';
  }
}

String get planesText {
  switch (planes) {
    case Planes.SoloHospedaje:
      return 'Solo Hospedaje';
      break;
    case Planes.DesayunoIncluido:
      return 'Desayunos Incluidos';
      break;
    case Planes.TodoIncluido:
      return ' Todo Incluido';
      break;
    default:
      return 'Desconocido';
  }
}

void selectTravel(BuildContext context) {
  Navigator.of(context).pushNamed(TravelDetailScreen.routeName,
    arguments: id,
  );
}

@override
Widget build(BuildContext context) {
  return InkWell(
    onTap:() =>  selectTravel(context),
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
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              child: Image.asset(
                image,
                height:150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              ),
            Positioned(
              bottom: 10,
              right: 10,
             child: Container(
               width: 200,
               color: Colors.black54,
               padding: EdgeInsets.symmetric(
                 vertical: 5,
                 horizontal: 10,
               ),
                            child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
             ),
            )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(children: <Widget>[
                  Icon(Icons.attach_money,),
                  SizedBox(width:6,),
                  Text(accesibilidadText),
                ],),
                Row(children: <Widget>[
                  Icon(Icons.all_inclusive,),
                  SizedBox(width:6,),
                  Text(planesText),
              ],
            ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

}