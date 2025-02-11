import 'package:ecommerce_ui/Checkout_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  final List<Map<String, String>> cartItems = [
    {'name': 'Product 1', 'price': '₹299', 'image': 'https://picsum.photos/200/300'},
    {'name': 'Product 2', 'price': '₹499', 'image': 'https://picsum.photos/200/301'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 4,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        cartItems[index]['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      cartItems[index]['name']!,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      cartItems[index]['price']!,
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {
                        // Remove item from cart logic
                      },
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total: ₹798',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '${cartItems.length} items',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
              child: Text('Proceed to Checkout', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                backgroundColor: Colors.purpleAccent,
                shadowColor: Colors.black38,
                elevation: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
