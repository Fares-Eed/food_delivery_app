import 'package:food_delivery_app/core/constants/app_assets.dart';

class Paymentmethod {
  Paymentmethod({this.image, this.title});

  String? image;
  String? title;
}

List<Paymentmethod> methods = [
  Paymentmethod(image: AppAssets.cash, title: "cash"),
  Paymentmethod(image: AppAssets.visa, title: "visa"),
  Paymentmethod(image: AppAssets.mastercard, title: "mastercard"),
  Paymentmethod(image: AppAssets.paypal, title: "paypal"),
];
