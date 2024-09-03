import 'package:farmereats/screens/verification.dart';
import 'package:flutter/material.dart';

class Signup2 extends StatefulWidget {
  const Signup2({super.key});

  @override
  State<Signup2> createState() => _Signup1State();
}

class _Signup1State extends State<Signup2> {
  // Variable to hold the selected state
  String? selectedState;

  // List of states
  final List<String> states = ['State 1', 'State 2', 'State 3', 'State 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 30, top: 50),
                      child: Text(
                        'Farmer Eats',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Text(
                      'Signup 2 of 4',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
                    child: Text(
                      'Farm Info!',
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Business name',
                            prefixIcon: Icon(Icons.sell_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Informal name',
                            prefixIcon: Icon(Icons.mood_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'Street address',
                            prefixIcon: Icon(Icons.home_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            fillColor: Colors.grey[200],
                            filled: true,
                            hintText: 'City',
                            prefixIcon: Icon(Icons.pin_drop_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 12.0),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: selectedState,
                                    hint: Text('Select state'),
                                    isExpanded: true,
                                    icon: Icon(Icons.arrow_drop_down),
                                    items: states.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedState = newValue;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 20),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  hintText: 'Pin code',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    // Handle back logic
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Handle continue logic
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verification(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD5715B),
                    minimumSize: Size(180, 50),
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
    );
  }
}
