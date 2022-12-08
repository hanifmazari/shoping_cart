import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Product List"),
        centerTitle: true,
        actions: [
          Center(
            child: Badge(
              badgeContent: Text("0", style: TextStyle(color: Colors.white),),
              animationDuration: Duration(milliseconds: 300),
              child: Icon(Icons.shopping_bag_outlined),
    
            ),
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 200,
              itemBuilder:  (context, index) {
              return Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(index.toString())
                      ],
                    )
                  ],
                ),
              );
            })
          ),
        ],
      ),
    );
  }
}