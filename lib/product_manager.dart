import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}

class ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _products.add('Advanced Food Tester');
          });

          print(_products);
        },
        child: Text('Add Products!'),
      ),


    ),
                Products(_products)
    ],);
  }
}