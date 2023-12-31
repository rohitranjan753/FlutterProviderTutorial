import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertutorial/favourite_provider.dart';
import 'package:providertutorial/myfavourites.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    // final favouriteProvider = Provider.of<FavouriteProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
        actions: [
          InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Favourite()));
              },
              child: Icon(Icons.menu_sharp)),
          SizedBox(width: 20,),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Consumer<FavouriteProvider>(
                    builder: (BuildContext context, value, Widget? child) {
                      return ListTile(
                        onTap: () {
                          if(value.selectedItem.contains(index)){
                            value.removeItem(index);
                          }
                          else{
                          value.addItem(index);
                          }
                        },
                        title: Text('Item ' + index.toString()),
                        trailing: Icon(
                            value.selectedItem.contains(index)
                                ? Icons.favorite
                                : Icons.favorite_border_outlined),
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
