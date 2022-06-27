import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../utilities/catalog.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days=30;
    String name="Ayush Kumar";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CatalogModel.items[index],
            );
          }
        ),
      ),
      drawer: MyDrawer(),
    );   
  }
}