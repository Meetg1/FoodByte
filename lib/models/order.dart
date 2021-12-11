class Order {
  final bool isDelivered = true;
  var deliveryDate = DateTime.now().toString();
  var foodItems; // will be a Map() <FoodItem, int quantity>.
  double itemtotal;
  double deliveryCharge;
  double taxes;
  double discount;
  double total;
  String fullname;
  String phone;
  String houseno;
  String streetname;
  String city;

  Order(
      this.foodItems,
      this.itemtotal,
      this.deliveryCharge,
      this.taxes,
      this.discount,
      this.total,
      this.fullname,
      this.phone,
      this.houseno,
      this.streetname,
      this.city);
}
