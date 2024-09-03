import 'package:farmereats/screens/login.dart';
import 'package:farmereats/screens/otppage.dart';
import 'package:farmereats/screens/verification.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 50),
                child: Text(
                  'Farmer Eats',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            // Adjusted or removed the SizedBox here to reduce the gap
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Remember your password ?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle create account logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginpage(),
                          ));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
                  prefixIcon: Icon(Icons.phone_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none, // Disable default border
                  ),
                ),
              ),
            ),

            SizedBox(height: 35),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Otpage(),
                      ));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffD5715B),
                  minimumSize: Size(double.infinity, 50), // Button full width
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(30.0), // Circular button border
                  ),
                ),
                child: Text(
                  'Send Code',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
