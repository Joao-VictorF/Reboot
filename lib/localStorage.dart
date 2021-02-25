import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
// Cart 
void addItemToCart (item) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final items = json.decode(prefs.getString('cart') ?? '[]');
  print(items);
  
  items.add(item);

  print(items);
  prefs.setString('cart', json.encode(items));
}

void removeItemFromCart(item) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final items = json.decode(prefs.getString('cart') ?? '[]');
  print(items);
  items.remove(item);

  print(items);
  prefs.setString('cart', json.encode(items));
}
// (item) async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
// }