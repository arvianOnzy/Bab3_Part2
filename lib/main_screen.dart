import 'package:flutter/material.dart';
import 'package:bab3p2/detail_screen.dart';
import 'package:bab3p2/models/turis.dart';


class MainScreen extends StatelessWidget { //1
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){ //2
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wisata Surabaya'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final Turis place = turisList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: listItem(place),
          );
        },
        itemCount: turisList.length,
      ),
    );
  } //2

  Widget listItem(Turis place){
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(place.imageAsset),
          ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    place.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(place.location),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}//1