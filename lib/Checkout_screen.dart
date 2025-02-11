import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Colors.purple.shade700,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.purple.shade700,
              ),
            ),
            SizedBox(height: 20),
            _buildTextField('Card Number', Icons.credit_card),
            SizedBox(height: 20),
            _buildTextField('Expiry Date (MM/YY)', Icons.calendar_today),
            SizedBox(height: 20),
            _buildTextField('CVV', Icons.lock, isPassword: true),
            SizedBox(height: 30),
            Divider(thickness: 1, color: Colors.grey[400]),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  '₹798',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                ),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Show Snackbar with Order Confirmation
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Order Placed!'),
                    duration: Duration(seconds: 2),
                    backgroundColor: Colors.green,
                  ),
                );

                // Optional: Navigate back to home screen or another screen after a delay
                Future.delayed(Duration(seconds: 2), () {
                  Navigator.pop(context);
                });
              },
              child: Text('Place Order', style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.purpleAccent,
                shadowColor: Colors.black38,
                elevation: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData icon, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.grey[700]),
        prefixIcon: Icon(icon, color: Colors.purple),
        filled: true,
        fillColor: Colors.grey[200],
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.purpleAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: const Color.fromARGB(255, 177, 174, 174)),
        ),
      ),
    );
  }
}
