import 'dart:io';

import 'package:farmereats/screens/signup4.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _Signup1State();
}

class _Signup1State extends State<Verification> {
  File? _Image;
  Future<void> _pickimage() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _Image = File(pickedFile.path);
      });
    }
  }

  // Variable to hold the selected state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(2, 2, 2, 15),
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
                'Signup 3 of 4',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5, right: 30),
              child: Text(
                'Verification',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 5, right: 30),
              child: Text(
                'Attached proof of Department of Agriculture\n registrations i.e. Florida Fresh, USDA Approved,\nUSDA Organic',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 5, right: 30),
              child: Row(
                children: [
                  Text(
                    'Attach proof of registration',
                    style: TextStyle(color: Colors.black),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: _pickimage,
                    child: CircleAvatar(
                      backgroundColor: Color(0xffD5715B),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (_Image != null)
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Image.file(
                  _Image!,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        // Handle login logic
                      },
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ))),
                  Spacer(),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Handle signup logic
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BusinessHours(),
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
      ),
    );
  }
}