abstract class Cache<T> {
  T getByKey(String key);
  void setByKey(String key, T value);
}

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class User {
  final String username;
  final String email;

  User(this.username, this.email);
}

class Order {
  final String orderId;
  final DateTime orderDate;

  Order(this.orderId, this.orderDate);
}

class ProductCache implements Cache<Product> {
  final Map<String, Product> _cache = {};

  @override
  Product getByKey(String key) {
    return _cache[key] ?? Product('Default', 0.0);
  }

  @override
  void setByKey(String key, Product value) {
    _cache[key] = value;
  }
}

class UserCache implements Cache<User> {
  final Map<String, User> _cache = {};

  @override
  User getByKey(String key) {
    return _cache[key] ?? User('default', 'default@email.com');
  }

  @override
  void setByKey(String key, User value) {
    _cache[key] = value;
  }
}

void main() {
  final productCache = ProductCache();
  productCache.setByKey('product1', Product('Product 1', 100.0));
  productCache.setByKey('product2', Product('Product 2', 200.0));

  final userCache = UserCache();
  userCache.setByKey('user1', User('user1', 'user!@gmail.com'));

  print(productCache.getByKey('product1').name);
  print(productCache.getByKey('product2').name);
  print(productCache.getByKey('product3').name);
}
