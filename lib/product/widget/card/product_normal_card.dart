/*import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../../model/product/product_model.dart';

class ProductNormalCard extends StatelessWidget {
  const ProductNormalCard({Key? key, required this.model}) : super(key: key);
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: context.general.paddingLow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: CachedNetworkImage(imageUrl: model.image ?? '')),
            Text(
              '${model.title}',
              style: context.general.textTheme.bodyLarge,
            ),
            Text(
              '${model.money}',
              style: context.general.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
*/