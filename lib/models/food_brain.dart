import 'food_item.dart';

class FoodBrain {
  List<FoodItem> pizzas = [
    FoodItem(9, 'Veg pizza 1', 'pizza2.jpg', 'Very tasty', 180),
    FoodItem(10, 'Veg pizza 2', 'pizza2.jpg', 'Very tasty', 180),
    FoodItem(11, 'Veg pizza 3', 'pizza2.jpg', 'Very tasty', 180),
    FoodItem(12, 'Veg pizza 4', 'pizza2.jpg', 'Very tasty', 180,
        allTimeOrders: 5, todayOrders: 5),
  ];

  List<FoodItem> chinese = [
    FoodItem(1, 'Veg Fried Rice 1', 'chinese2.jpeg', 'Very tasty', 180),
    FoodItem(2, 'Veg Fried Rice 2', 'chinese2.jpeg', 'Very tasty', 180),
    FoodItem(3, 'Veg Fried Rice 3', 'chinese2.jpeg', 'Very tasty', 180,
        allTimeOrders: 5, todayOrders: 5),
    FoodItem(4, 'Veg Fried Rice 4', 'chinese2.jpeg', 'Very tasty', 180),
  ];

  List<FoodItem> burgers = [
    FoodItem(5, 'Veg burger 1', 'burger2.jpg', 'Very tasty', 180),
    FoodItem(6, 'Veg burger 2', 'burger2.jpg', 'Very tasty', 180,
        allTimeOrders: 5, todayOrders: 5),
    FoodItem(7, 'Veg burger 3', 'burger2.jpg', 'Very tasty', 180),
    FoodItem(8, 'Veg burger 4', 'burger2.jpg', 'Very tasty', 180),
  ];

  List<FoodItem> souths = [
    FoodItem(13, 'Veg south 1', 'south2.jfif', 'Very tasty', 180,
        allTimeOrders: 5, todayOrders: 5),
    FoodItem(14, 'Veg south 2', 'south2.jfif', 'Very tasty', 180),
    FoodItem(15, 'Veg south 3', 'south2.jfif', 'Very tasty', 180),
    FoodItem(16, 'Veg south 4', 'south2.jfif', 'Very tasty', 180),
  ];

// List todaysSpecial = [1, 2, 5];

// List mostPopular = [2, 3, 4];

  List<FoodItem> getMostPopular(String foodname) {
    if (foodname == 'Pizzas') {
      pizzas.sort((b, a) => a.allTimeOrders.compareTo(b.allTimeOrders));
      return pizzas;
    } else if (foodname == 'Chinese') {
      chinese.sort((b, a) => a.allTimeOrders.compareTo(b.allTimeOrders));
      return chinese;
    } else if (foodname == 'Burgers') {
      burgers.sort((b, a) => a.allTimeOrders.compareTo(b.allTimeOrders));
      return burgers;
    } else {
      souths.sort((b, a) => a.allTimeOrders.compareTo(b.allTimeOrders));
      return souths;
    }
  }

  List<FoodItem> getTodaySpecial(String foodname) {
    if (foodname == 'Pizzas') {
      pizzas.sort((b, a) => a.todayOrders.compareTo(b.todayOrders));
      return pizzas;
    } else if (foodname == 'Chinese') {
      chinese.sort((b, a) => a.todayOrders.compareTo(b.todayOrders));
      return chinese;
    } else if (foodname == 'Burgers') {
      burgers.sort((b, a) => a.todayOrders.compareTo(b.todayOrders));
      return burgers;
    } else {
      souths.sort((b, a) => a.todayOrders.compareTo(b.todayOrders));
      return souths;
    }
  }
}
