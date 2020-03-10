import 'package:flutter/material.dart';
import '../dummy_data.dart';


class TravelDetailScreen extends StatelessWidget {
  
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 100,
      width: 350 ,
      child: child,
    );
  }


  static const routeName = '/travel-detail';
  
  @override
  Widget build(BuildContext context) {

    final travelId = ModalRoute.of(context).settings.arguments as String;
    final selectedTravel = DUMMY_TRAVELS.firstWhere((travel) => travel.id == travelId);

    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedTravel.title}'),
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  selectedTravel.image,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle(context, 'Costos'),
              buildContainer(
                ListView.builder(itemBuilder: (ctx , index) => Card(
                  color: Theme.of(context).primaryColorDark,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical:5,
                      horizontal: 10,              
                    ),
                  child: Text(
                    selectedTravel.priceTable[index],
                    style:TextStyle(color: Colors.white),
                  ),
                  ),
                ),
                itemCount: selectedTravel.priceTable.length,
              ),
              ),
              buildSectionTitle(context, 'Descripcion'),
              buildContainer(
                ListView.builder(
                  itemBuilder: (ctx,index) => ListTile(
                    leading: CircleAvatar(
                      child: Text( '# ${( index + 1)}'),
                    ),
                  title: Text(
                    selectedTravel.descripcion[index],
                  ),
                  ),
                itemCount: selectedTravel.descripcion.length,
                ),
              )
            ],
      ),
        )
    );
  }
}