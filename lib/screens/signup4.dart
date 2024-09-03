import 'package:flutter/material.dart';

class BusinessHours extends StatefulWidget {
  @override
  _BusinessHoursState createState() => _BusinessHoursState();
}

class _BusinessHoursState extends State<BusinessHours>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final Map<String, List<bool>> selectedSlots = {
    'M': [true, false, false, false, false],
    'T': [false, false, false, false, false],
    'W': [true, true, false, true, false],
    'Th': [false, false, false, false, false],
    'F': [false, false, false, false, false],
    'S': [false, false, false, false, false],
    'Su': [false, false, false, false, false],
  };

  final List<String> timeSlots = [
    '8:00am - 10:00am',
    '10:00am - 1:00pm',
    '1:00pm - 4:00pm',
    '4:00pm - 7:00pm',
    '7:00pm - 10:00pm',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 16.0),
          child: Text(
            'FarmerEats',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Signup 4 of 4',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 10),
            Text(
              'Business Hours',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Choose the hours your farm is open for pickups. This will allow customers to order deliveries.',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 20),
            TabBar(
              dividerHeight: 0,
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicator: BoxDecoration(
                color: Color(0xffD5715B),
                borderRadius: BorderRadius.circular(8),
              ),
              tabs: [
                _buildTab('M'),
                _buildTab('T'),
                _buildTab('W'),
                _buildTab('Th'),
                _buildTab('F'),
                _buildTab('S'),
                _buildTab('Su'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTimeSlots('M'),
                  _buildTimeSlots('T'),
                  _buildTimeSlots('W'),
                  _buildTimeSlots('Th'),
                  _buildTimeSlots('F'),
                  _buildTimeSlots('S'),
                  _buildTimeSlots('Su'),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Handle signup logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffD5715B),
                    minimumSize: Size(180, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Signup',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String day) {
    return Tab(
      child: Container(
        alignment: Alignment.center,
        width: 32,
        height: 32,
        child: Text(day),
      ),
    );
  }

  Widget _buildTimeSlots(String day) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: timeSlots.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSlots[day]![index] = !selectedSlots[day]![index];
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: selectedSlots[day]![index]
                    ? Color(0xffD5715B)
                    : Colors.grey.shade300,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                timeSlots[index],
                style: TextStyle(
                  color:
                      selectedSlots[day]![index] ? Colors.white : Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
