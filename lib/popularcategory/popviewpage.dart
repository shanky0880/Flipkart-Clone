import 'package:flutter/material.dart';
import 'package:template/popularcategory/popmodel.dart';

class Shoespage extends StatelessWidget {
  final Carditem item;
  const Shoespage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.network(
              item.urlImage,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(item.title),
          Text(item.subtitle)
        ],
      ),
    );
  }
}
