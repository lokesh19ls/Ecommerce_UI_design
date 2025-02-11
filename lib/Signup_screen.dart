import 'package:ecommerce_ui/Home_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade700, Colors.purple.shade600],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_add,
                  size: 80,
                  color: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Join us and get started!',
                  style: TextStyle(fontSize: 18, color: Colors.white70),
                ),
                SizedBox(height: 30),
                _buildTextField('Full Name', Icons.person, false),
                SizedBox(height: 20),
                _buildTextField('Email', Icons.email, false),
                SizedBox(height: 20),
                _buildTextField('Password', Icons.lock, true),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text('Sign Up', style: TextStyle(fontSize: 18)),
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
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Already have an account? Login',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, IconData icon, bool isPassword) {
    return TextField(
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Colors.white70),
        prefixIcon: Icon(icon, color: Colors.white70),
        filled: true,
        fillColor: Colors.white.withOpacity(0.2),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.white54),
        ),
      ),
      style: TextStyle(color: Colors.white),
    );
  }
}
