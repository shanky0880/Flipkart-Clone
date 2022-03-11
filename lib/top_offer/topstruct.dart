import 'package:flutter/material.dart';

import 'package:template/popularcategory/popmodel.dart';
import 'package:template/popularcategory/popviewpage.dart';

class Cardstruct extends StatelessWidget {
  const Cardstruct({
    Key? key,
    required this.context,
    required this.item,
  }) : super(key: key);

  final BuildContext context;
  final Carditem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Material(
                  child: Ink.image(
                image: NetworkImage(
                  item.urlImage,
                ),
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Shoespage(item: item))),
                ),
              )),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(item.title,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Text(item.subtitle,
              style: TextStyle(
                fontSize: 12,
              )),
        ],
      ),
    );
  }
}
