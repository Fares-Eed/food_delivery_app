import 'package:food_delivery_app/core/constants/app_assets.dart';

class Items {
  final String? type;
  final String? title;
  final String? subtitle;
  final String? price;
  final String? number;
 final String? path;
 final String? status;
  Items({this.type, this.title, this.subtitle, this.price, this.number, this.path, this.status});

  
  static List<Items> onlist = [
    Items(
      path: AppAssets.pizzahut,
      type: "Food",
      title: "Pizza Hut",
      subtitle: "03 Items",
      price: "\$35.25",
      number: "#162432",
    ),
    Items(
      path: AppAssets.macdonald,
      type: "Drink",
      title: "McDonald",
      subtitle: "02 Items",
      price: "\$40.15",
      number: "#242432",
    ),
    Items(
      path: AppAssets.starbucks,
      type: "Drink",
      title: "Starbucks",
      subtitle: "01 Item",
      price: "\$10.20",
      number: "#240112",
    ),
  ];
   static List<Items> historylist = [
    Items(
      path: AppAssets.pizzahut,
      status:"Completed",
      type: "Food",
      title: "Pizza Hut",
      subtitle: "29 Jan, 12:30 . 03 Item",
      price: "\$35.25",
      number: "#162432",
    ),
    Items(
      path: AppAssets.macdonald,
      status:"Completed",
      type: "Drink",
      title: "McDonald",
      subtitle: "30 Jan, 12:30 . 02 Item",
      price: "\$40.15",
      number: "#242432",
    ),
    Items(
      path: AppAssets.starbucks,
      status:"Canceled",
      type: "Drink",
      title: "Starbucks",
      subtitle: "30 Jan, 12:30 . 01 Item",
      price: "\$10.20",
      number: "#240112",
    ),
  ];
}