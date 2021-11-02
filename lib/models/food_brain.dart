import 'food_item.dart';

class FoodBrain {
  List<FoodItem> pizzas = [
    FoodItem(9, 'Paneer Pizza', 'pizza5.jpg',
        'Veg pizza with Paneer, capcicum & red paprika', 350),
    FoodItem(10, 'Cheese n Corn', 'pizza2.jpg',
        'Cheesy delight of Golden Corn & Cheese', 300),
    FoodItem(11, 'Veggie Paradise', 'pizza3.png',
        'Veg pizza with corn, olives & red paprika', 200),
    FoodItem(12, 'Farmhouse Pizza', 'pizza4.jpg',
        'Combo of onion, capsicum, tomato & grilled mushroom', 400,
        allTimeOrders: 5, todayOrders: 5),
  ];

  List<FoodItem> chinese = [
    FoodItem(1, 'Veg Schezwan Noodles', 'chinese1.jpg',
        'Spicy schezwan sauce and Hakka Noodles made with soy sauce', 120),
    FoodItem(2, 'Schezwan Fried Rice', 'chinese2.JPG',
        'Popular fried rice variety from the Indo chinese cuisine', 100),
    FoodItem(
        3,
        'Veg Manchurian',
        'chinese3.jpg',
        'Indo-chinese dish made by roughly chopping and deep-frying cauliflower',
        80,
        allTimeOrders: 5,
        todayOrders: 5),
    FoodItem(4, 'Veg Noodle Soup', 'chinese4.jpg',
        'Delicious vegan soup with chinese noodles', 90),
  ];

  List<FoodItem> burgers = [
    FoodItem(5, 'Chilli Cheese', 'burger2.jpg',
        'Hamburger with patty topped with chilli con carne', 120),
    FoodItem(
        6,
        'Crispy Veg Supreme',
        'burger1.jpg',
        'Combo of crispy veg patty, topped with delicious sauce and garnished with onions',
        110,
        allTimeOrders: 5,
        todayOrders: 5),
    FoodItem(7, 'Paneer King', 'burger3.jfif',
        'Fresh crumbled Paneer and red, yellow and green peppers', 130),
    FoodItem(
        8,
        'Mexican Veg',
        'burger4.jfif',
        'Red kidney beans covered with mashed potato and vegetable mixture and deep fried',
        140),
  ];

  List<FoodItem> souths = [
    FoodItem(
        13,
        'Sambar Vada',
        'south1.jpg',
        'South Indian fritter made in a doughnut shape, with a crispy exterior and soft interior',
        50,
        allTimeOrders: 5,
        todayOrders: 5),
    FoodItem(
        14,
        'Idli Sambar',
        'south2.jfif',
        'South Indian dish with soft fluffy steamed cakes known as idli served with sambar, a vegetable lentil stew',
        40),
    FoodItem(
        15,
        'Plain Dosa',
        'south3.jfif',
        'South Indian dish made from a fermented batter predominantly consisting of lentils and rice',
        50),
    FoodItem(16, 'Masala Dosa', 'south4.jfif',
        'Popular variation of the South Indian Dosa', 80),
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
