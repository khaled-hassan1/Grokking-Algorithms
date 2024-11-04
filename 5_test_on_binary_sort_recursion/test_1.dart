class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() => 'Product(name: $name, price: $price)';
}

// Selection sort using recursion
int findLowestProduct(List<Product> products) {
  Product lowest = products[0];
  int index = 0;
  for (var i = 1; i < products.length; i++) {
    if (products[i].price < lowest.price) {
      lowest = products[i];
      index = i;
    }
  }
  return index;
}

List<Product> sortedList(List<Product> products) {
  if (products.isEmpty) {
    return [];
  }
  List<Product> newList = [];
  List<Product> copyList = [...products];
  int lowest = findLowestProduct(copyList);
  newList.add(copyList.removeAt(lowest));
  return newList + sortedList(copyList);
}

// Binary search using recursion
int searchAtProducts(List<Product> products, double target, int low, int high) {
  if (low > high) {
    return -1;
  }

  int mid = (low + high) ~/ 2;
  double guess = products[mid].price;
  if (guess == target) {
    return mid;
  } else if (guess < target) {
    return searchAtProducts(products, target, mid + 1, high);
  } else {
    return searchAtProducts(products, target, low, mid - 1);
  }
}
