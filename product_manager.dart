import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  String startingProduct;
  ProductManager(this.startingProduct){
    print('[ProductManager widget Constrcutor]');
  }

  @override
  State<StatefulWidget> createState() {
    print('[ProductManager widget create]');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {

  List<String> _products = [];

  @override
  void initState() {
    print('[_ProductManagerState initState]');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('[_ProductManagerState didUpdateWidget]');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('[_ProductManagerState Widget build]');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('More tester');
                //print(_products);
              });
            },
            child: Text('Add Product'),
          ),
        ),
        Products(_products),
      ],
    );
  }
}
