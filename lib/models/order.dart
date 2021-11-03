class Order {
  final int orderid;
  // final String userid;
  final bool isDelivered = true;
  var deliveryDate;
  var foodItems; // will be a Map() <FoodItem, int quantity>.
  double itemtotal;
  double deliveryCharge;
  double taxes;
  double discount;
  double total;
  // var address; // will be a Map() of city, pincode,etc.

  Order(this.orderid, this.deliveryDate, this.foodItems, this.itemtotal,
      this.deliveryCharge, this.taxes, this.discount, this.total);
}
