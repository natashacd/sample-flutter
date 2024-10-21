import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF9A52F7), // Darker purple
                  Color(0xFFD6BAE8), // Lighter purple
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Circle avatar (Shopping cart icon)
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25 - 40, // Adjust the position
            left: MediaQuery.of(context).size.width * 0.5 - 40, // Center horizontally
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shopping_cart,
                size: 50,
                color: Colors.purple,
              ),
            ),
          ),
          // White background with rounded corners
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(40), // Rounded corners at the top
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView( // Allow scrolling when the keyboard appears
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 80), // Additional space for the logo

                      // Email TextField
                     // Email TextField
Container(
  decoration: BoxDecoration(
    color: Colors.transparent, // Make the container transparent
    borderRadius: BorderRadius.circular(10), // Border radius
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1), // Shadow color
        blurRadius: 5, // Spread radius
        offset: Offset(0, 2), // Shadow position
      ),
    ],
  ),
  child: TextField(
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF0F0F0), // Light grey fill color
      labelText: 'Email',
      hintText: 'Sample@gmail.com',
      border: InputBorder.none, // No border by default
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        borderSide: BorderSide(color: Colors.transparent), // Transparent border when enabled
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        borderSide: BorderSide(color: Colors.purple, width: 2), // Border when focused
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    ),
  ),
),
SizedBox(height: 16),

// Password TextField with visibility toggle
Container(
  decoration: BoxDecoration(
    color: Colors.transparent, // Make the container transparent
    borderRadius: BorderRadius.circular(10), // Border radius
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.1), // Shadow color
        blurRadius: 5, // Spread radius
        offset: Offset(0, 2), // Shadow position
      ),
    ],
  ),
  child: TextField(
    obscureText: _obscurePassword,
    decoration: InputDecoration(
      filled: true,
      fillColor: const Color(0xFFF0F0F0), // Light grey fill color
      labelText: 'Password',
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword ? Icons.visibility_off : Icons.visibility,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
      ),
      border: InputBorder.none, // No border by default
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        borderSide: BorderSide(color: Colors.transparent), // Transparent border when enabled
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
        borderSide: BorderSide(color: Colors.purple, width: 2), // Border when focused
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
    ),
  ),
),

                      SizedBox(height: 30),

                      // Login Button
                      SizedBox(
                        width: 250,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 197, 112, 250),
                                Color(0xFF9A52F7), // Lighter purple
                              ],
                            ),
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              // Add login logic here
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              backgroundColor: Colors.transparent, // Make the button's background transparent
                              shadowColor: Colors.transparent, // Remove button shadow to show gradient properly
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30), // Same rounded corners for the button
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), fontSize: 18),
                            ),
                          ),
                        ),
                      ),

                      // Forgot Password
                      TextButton(
                        onPressed: () {
                          // Add forgot password logic here
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: Color(0xFF9967CE), fontSize: 14),
                        ),
                      ),

                      SizedBox(height: 40),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center, // Center align the column vertically
                        children: [
                          // "Don't have an account?" Text
                          Text(
                            "Don't have an account? ",
                            style: TextStyle(color: Color(0xFF5C5C5C), fontSize: 14),
                          ),
                          // "Register" TextButton (which is clickable)
                          TextButton(
                            onPressed: () {
                              // Add register logic here
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(color: Color(0xFF9967CE), fontSize: 14),
                              
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
