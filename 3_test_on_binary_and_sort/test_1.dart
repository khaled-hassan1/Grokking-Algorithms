class Product {
  String name;
  double price;

  Product(this.name, this.price);

  @override
  String toString() => 'Product(name: $name, price: $price)';
}

List<Product> products = [
  Product('Laptop', 1200.00),
  Product('Phone', 800.00),
  Product('Tablet', 600.00),
  Product('Monitor', 300.00)
];

/// Selection Sort Part

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

List<Product> selectionSortTest1(List<Product> products) {
  List<Product> newList = [];
  List<Product> copyList = [...products];
  while (copyList.isNotEmpty) {
    int lowest = findLowestProduct(copyList);
    newList.add(copyList.removeAt(lowest));
  }
  return newList;
}

/// Binary Search Part

int binarySearchTest1(List<Product> sortedProdects, double targetPrice) {
  int low = 0;
  int high = sortedProdects.length - 1;
  while (low <= high) {
    int mid = (low + high) ~/ 2;
    Product guess = sortedProdects[mid];
    if (guess.price == targetPrice) {
      return mid;
    } else if (guess.price < targetPrice) {
      low = mid + 1;
    } else {
      high = mid - 1;
    }
  }
  return -1;
}


  // double targetPrice = 800.00;

  // List<Product> sorted = selectionSortTest1(products);
  // sorted.forEach(print);

  // int index = binarySearchTest1(sorted, targetPrice);

  // // Use the index on the sorted list instead of the original products list
  // if (index != -1) {
  //   print('Product found: ${sorted[index]}');
  // } else {
  //   print('Product with price \$${targetPrice.toStringAsFixed(2)} not found.');
  // }