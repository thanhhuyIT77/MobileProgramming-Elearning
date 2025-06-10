import 'package:bt_firebase/product.dart';

abstract class ProductService{
  Future<Product> getProduct();
}