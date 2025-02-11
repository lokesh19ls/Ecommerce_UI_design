import 'package:ecommerce_ui/Cart_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 8),
            Flexible(
              child: Text(
                'Deliver to Reshab - Durgapur 713205',
                style: TextStyle(fontSize: 14, color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.indigo[900],
        actions: [
          IconButton(icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
          IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPrimeBanner(),
            _buildCategoriesGrid(),
            _buildSectionTitle('Attractive deals on shoes'),
            _buildDealsSection(),
            _buildSectionTitle('Amazon Pay'),
            _buildAmazonPaySection(),
          ],
        ),
      ),
    );
  }

  Widget _buildPrimeBanner() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.indigo, Colors.indigoAccent],
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(Icons.local_offer, color: Colors.amber, size: 30),
          SizedBox(width: 10),
          Text(
            'Prime',
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.count(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _buildCategoryItem('Electronics', Icons.electrical_services),
          _buildCategoryItem('Mobiles', Icons.phone_android),
          _buildCategoryItem('Fashion', Icons.shopping_bag),
          _buildCategoryItem('miniTV', Icons.tv),
          _buildCategoryItem('Deals', Icons.local_offer),
          _buildCategoryItem('Rewards', Icons.card_giftcard),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildDealsSection() {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          _buildDealItem('https://picsum.photos/200/300', 'Under ₹699'),
          _buildDealItem('https://picsum.photos/200/301', 'Starting ₹199'),
          _buildDealItem('https://picsum.photos/200/302', 'Extra 10% off'),
          _buildDealItem('https://picsum.photos/200/303', 'Best Deals'),
        ],
      ),
    );
  }

  Widget _buildDealItem(String imageUrl, String title) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.symmetric(horizontal: 8),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(
              imageUrl,
              width: 150,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAmazonPaySection() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildAmazonPayItem(Icons.money, 'Send Money'),
          _buildAmazonPayItem(Icons.qr_code, 'Scan QR'),
          _buildAmazonPayItem(Icons.receipt, 'Bills & Recharge'),
        ],
      ),
    );
  }

  Widget _buildAmazonPayItem(IconData icon, String title) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.indigo[50],
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
          ),
          padding: EdgeInsets.all(12),
          child: Icon(icon, size: 40, color: Colors.indigo),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.indigo[50],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.indigo),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
