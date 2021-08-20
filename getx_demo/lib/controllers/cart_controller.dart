import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:getx_demo/model/product.dart';

class CartController extends GetxController {
  // var cartItems = List<Product>().obs;
  List<Product> cartItems =[].obs;

  int get count => cartItems.length;
  double get totalPrice => cartItems.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product) {
    cartItems.add(product);
  }
}
