import 'package:flutter/material.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context,index){
              return ListTile(
                onTap: (){

                },
                title: Text('Item '+index.toString()),
                trailing: Icon(Icons.favorite_border_outlined),
              );
            }),
          )
        ],
      ),
    );
  }
}
