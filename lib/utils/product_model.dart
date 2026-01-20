import 'package:flutter/foundation.dart';

class ProductModel {
  final String merchantLogo;
  final String productImage;
  final String productName;
  final String productPrice;
  final String productSlashedPrice;

  ProductModel(
      {required this.merchantLogo,
      required this.productImage,
      required this.productName,
      required this.productPrice,
        required this.productSlashedPrice});
}
