import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/home/detail/widget/add_cart.dart';
import 'package:clothes_app/screens/home/detail/widget/clothes_info.dart';
import 'package:clothes_app/screens/home/detail/widget/detail_app_bar.dart';
import 'package:clothes_app/screens/home/detail/widget/size_list.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Clothes clothes;
  DetailPage(this.clothes);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          DetailAppBar(clothes),
          ClothesInfo(clothes),
          SizeList(),
          AddCart(clothes)
        ])));
  }
}
