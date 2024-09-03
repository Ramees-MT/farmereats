import 'package:farmereats/screens/forgot.dart';
import 'package:farmereats/screens/signup1.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
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
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text(
                'Welcome back!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Text(
                    'New here?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup1(),
                          ));
                    },
                    child: Text('Create account',
                        style: TextStyle(color: Colors.red)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.alternate_email),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Circular border
                    borderSide: BorderSide.none, // Disable default border
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Circular border
                    borderSide: BorderSide.none, // Disable default border
                  ),
                  suffixIcon: TextButton(
                    onPressed: () {
                      // Handle forgot password logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgotPage(),
                          ));
                    },
                    child: Text(
                      'Forgot?',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle login logic
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
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'or login with',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 45,
                    width: 75,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Image.asset('asset/images/icons8-google 1.png')),
                Container(
                    height: 45,
                    width: 75,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Image.asset('asset/images/icons8-apple-logo 1.png')),
                Container(
                    height: 45,
                    width: 75,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        borderRadius: BorderRadius.circular(25)),
                    child: Image.asset('asset/images/Group 52.png'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
