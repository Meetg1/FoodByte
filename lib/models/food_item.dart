class FoodItem {
  final int id;
  final String name;
  final String imageName;
  final String subtitle;
  final double price;
  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pretium tellus magna, nec egestas orci aliquet eget. Phasellus interdum sit amet nulla at lobortis. Aliquam sed tempus nulla, at porttitor erat. Nam eget nibh a mi bibendum blandit. Nam sed lorem bibendum, faucibus purus in, pharetra ex. ";
  int allTimeOrders;
  int todayOrders;

  FoodItem(this.id, this.name, this.imageName, this.subtitle, this.price,
      {this.allTimeOrders: 0, this.todayOrders: 0});
}
