import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('[Products Manager Widget] Constructor');
  }
 
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Tester'];

  @override
  void initState() {
    super.initState();
    _products.add(widget.startingProduct);
    

  }
 
 @override
 void didUpdateWidget(ProductManager oldWidget) {
   print('[ProductManagerState] didUpdateWidget()');
   super.didUpdateWidget(oldWidget);
 }

  @override
  Widget build(BuildContext context) {
    print('[Products Manager Widget] Constructor');
    return Column(children: [Container(
      margin: EdgeInsets.all(10.0),
      child: RaisedButton(
        onPressed: () {
          setState(() {
            _products.add('Advanced Food Tester');
          });

          print(_products);
        },
        child: Text('Add Products'),
      ),


    ),
                Products(_products)
    ],);
  }
}
