import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../utilities/catalog.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:(CatalogModel.items!=null && CatalogModel.items!.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.items!.length,
          itemBuilder: (context, index){
            return ItemWidget(
              item: CatalogModel.items![index],
            );
          }
        )
        : const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: const MyDrawer(),
    );   
  }
}