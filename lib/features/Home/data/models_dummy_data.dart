import 'package:flutter/foundation.dart';

// 1. Category Model
class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
}

// 2. Restaurant Model
class RestaurantModel {
  final String id;
  final String name;
  final String categories; // e.g., "Burger - Chicken - Wings"
  final String image;
  final double rating;
  final String deliveryFee;
  final String deliveryTime;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.categories,
    required this.image,
    required this.rating,
    required this.deliveryFee,
    required this.deliveryTime,
  });
}

// 3. Burger/Product Model
class BurgerModel {
  final String id;
  final String title;
  final String restaurantName;
  final String price;
  final String image;

  BurgerModel({
    required this.id,
    required this.title,
    required this.restaurantName,
    required this.price,
    required this.image,
  });
}

//Dummy data
// 1. القائمة الخاصة بالتصنيفات (Categories)
List<CategoryModel> allCategories = [
  CategoryModel(id: '1', name: 'Burger', image: 'https://images.unsplash.com/photo-1571091718767-18b5b1457add?w=500&q=80'),
  CategoryModel(id: '2', name: 'Pizza', image: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=500&q=80'),
  CategoryModel(id: '3', name: 'Chicken', image: 'https://images.unsplash.com/photo-1562967914-608f82629710?w=500&q=80'),
  CategoryModel(id: '4', name: 'Sushi', image: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=500&q=80'),
];

// 2. القائمة الخاصة بالمطاعم المفتوحة (Open Restaurants)
List<RestaurantModel> openRestaurants = [
  RestaurantModel(
    id: '1',
    name: 'Rose Garden Restaurant',
    categories: 'Burger - Chicken - Riche - Wings',
    image: 'https://www.ndfb.org/image/cache/bg-oyt-default.jpg',
    rating: 4.7,
    deliveryFee: 'Free',
    deliveryTime: '20 min',
  ),
  RestaurantModel(
    id: '2',
    name: 'Halal Lab Food',
    categories: 'Pizza - Italian - Pasta',
    image: 'https://images.unsplash.com/photo-1555396273-367ea4eb4db5?w=800&q=80',
    rating: 4.5,
    deliveryFee: '\$2.00',
    deliveryTime: '30 min',
  ),
  RestaurantModel(
    id: '3',
    name: 'Sushi Zen',
    categories: 'Sushi - Japanese - Seafood - Ramen',
    image: 'https://images.unsplash.com/photo-1579871494447-9811cf80d66c?w=800&q=80',
    rating: 4.9,
    deliveryFee: '\$3.00',
    deliveryTime: '40 min',
  ),
  RestaurantModel(
    id: '4',
    name: 'Green Leaf (Healthy)',
    categories: 'Salads - Vegan - Healthy - Bowls',
    image: 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800&q=80',
    rating: 4.6,
    deliveryFee: 'Free',
    deliveryTime: '15 min',
  ),
  RestaurantModel(
    id: '5',
    name: 'Sweet Bliss',
    categories: 'Waffles - Pancakes - Ice Cream - Coffee',
    image: 'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=800&q=80',
    rating: 4.5,
    deliveryFee: '\$1.00',
    deliveryTime: '20 min',
  ),
  RestaurantModel(
    id: '6',
    name: 'The Burger Joint',
    categories: 'Burger - Steak - Grill - Fries',
    image: 'https://images.unsplash.com/photo-1466978913421-dad2ebd01d17?w=800&q=80',
    rating: 4.4,
    deliveryFee: 'Free',
    deliveryTime: '30 min',
  ),
];

// 3.(Popular Burgers)
List<BurgerModel> popularBurgers = [
  BurgerModel(
    id: '1',
    title: 'Double Burger',
    restaurantName: 'Just Burger',
    price: '\$40',
    image: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=500&q=80',
  ),
  BurgerModel(
    id: '2',
    title: 'Cheese Overload',
    restaurantName: 'Rose Garden',
    price: '\$35',
    image: 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=500&q=80',
  ),
  BurgerModel(
    id: '3',
    title: 'Zinger Burger',
    restaurantName: 'Chicken House',
    price: '\$45',
    image: 'https://images.unsplash.com/photo-1594212699903-ec8a3eca50f5?w=500&q=80',
  ),
BurgerModel(
  id: '4',
  title: 'Crispy Chicken',
  restaurantName: 'Chicken House',
  price: '\$42',
  image: 'https://img.pikbest.com/png-images/20240718/delicious-crispy-chicken-burger-isolated-on-transparent-background-_10672579.png!w700wp',
),
];