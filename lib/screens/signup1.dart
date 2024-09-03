import 'package:farmereats/screens/login.dart';
import 'package:farmereats/screens/signup2.dart';
import 'package:flutter/material.dart';

class Signup1 extends StatefulWidget {
  const Signup1({super.key});

  @override
  State<Signup1> createState() => _Signup1State();
}

class _Signup1State extends State<Signup1> {
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
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                'Signup 1 of 4',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
              child: Text(
                'Welcome!',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
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
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('asset/images/icons8-google 1.png'),
                ),
                Container(
                  height: 45,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('asset/images/icons8-apple-logo 1.png'),
                ),
                Container(
                  height: 45,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset('asset/images/Group 52.png'),
                ),
              ],
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                'or signup with',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Full name',
                      prefixIcon: Icon(Icons.person_outline), // Outlined icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Increased spacing
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined), // Outlined icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Increased spacing
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Phone number',
                      prefixIcon: Icon(Icons.phone_outlined), // Outlined icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Increased spacing
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock_outline), // Outlined icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Increased spacing
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      hintText: 'Re-enter password',
                      prefixIcon: Icon(Icons.lock_outline), // Outlined icon
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50), // Added spacing before buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Handle login logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginpage(),
                          ));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,

                        decoration: TextDecoration.underline, // Underline added
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                      width:
                          20), // Spacing between TextButton and ElevatedButton
                  ElevatedButton(
                    onPressed: () {
                      // Handle signup logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup2(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffD5715B),
                      minimumSize: Size(180, 50), // Reduced button size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
