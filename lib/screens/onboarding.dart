import 'package:farmereats/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                buildOnboardingPage(
                  context,
                  image: 'asset/images/Group 44.png',
                  backgroundColor: Color(0xff5EA25F),
                  title: 'Quality',
                  description:
                      'Sell your farm fresh products directly to consumers, cutting out the middleman and reducing emissions of the global supply chain.',
                ),
                buildOnboardingPage(
                  context,
                  image: 'asset/images/Group.png',
                  backgroundColor: Color(0xffD5715B),
                  title: 'Convenient',
                  description:
                      'Our team of delivery drivers will make sure your orders are picked up on time and promptly delivered to your customers.',
                ),
                buildOnboardingPage(
                  context,
                  image: 'asset/images/Group 46.png',
                  backgroundColor: Color(0xffF8C569),
                  title: 'Local',
                  description:
                      'We love the earth and know you do too! Join us in reducing our local carbon footprint one order at a time.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage(
    BuildContext context, {
    required String image,
    required Color backgroundColor,
    required String title,
    required String description,
  }) {
    final screenHeight = MediaQuery.of(context).size.height;
    final availableHeight = screenHeight - kToolbarHeight - 40;

    return Container(
      color: backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(image),
            SizedBox(height: 40),
            Center(
              child: Container(
                height: availableHeight,
                width: 410,
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 40),
                      SmoothPageIndicator(
                        controller: _controller, // PageController
                        count: 3,
                        effect: ExpandingDotsEffect(
                          dotHeight: 8,
                          dotWidth: 8,
                          activeDotColor: Colors.black,
                          expansionFactor: 3, // Active dot width
                        ),
                      ),
                      // Adjust spacing as needed
                      SizedBox(
                        height: 90,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: backgroundColor, // Button color
                          padding: EdgeInsets.symmetric(
                              horizontal: 40, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          elevation: 5, // Adds shadow
                        ),
                        child: Text(
                          'Join the Movement!',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Loginpage(),
                              ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
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
