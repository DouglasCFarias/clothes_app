// ignore_for_file: prefer_const_constructors

import 'package:clothes_app/models/clothes.dart';
import 'package:flutter/material.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  ClothesInfo(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${clothes.title} ${clothes.subtitle}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 15,
                ))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 10),
          child: Row(
            children: [
              Icon(
                Icons.star_border,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                '4.5 (2.7k)',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              )
            ],
          ),
        ),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text:
                    'Gucci Oversize Hoodie, a hoddie with a the Style of gucci\nmade of solt fabric, and made with an oversized\nmodel according to today\'s times',
                style: TextStyle(
                    color: Colors.grey.withOpacity(0.7), height: 1.5)),
            TextSpan(
                text: 'Read  More',
                style: TextStyle(color: Theme.of(context).primaryColor))
          ]),
        )
      ]),
    );
  }
}
