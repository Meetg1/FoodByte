class Order {
  final int orderid;
  // final String userid;
  final bool isDelivered = true;
  final String deliveryDate;
  var foodItems; // will be a Map() <FoodItem, int quantity>.
  var paymentDetails; // will be a Map() of item total, tax, discount, etc.

  Order(this.orderid, this.deliveryDate, this.foodItems);
}
