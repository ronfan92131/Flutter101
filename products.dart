import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products){
    print('[Products widget Constrcutor]');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products widget build]');
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.network(
                        'https://raw.githubusercontent.com/flutter/website/master/src/_includes/code/layout/lakes/images/lake.jpg',
                      ),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
