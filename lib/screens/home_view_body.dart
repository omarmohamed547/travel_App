import 'package:flutter/material.dart';

class homeviewBody extends StatefulWidget {
  @override
  State<homeviewBody> createState() => _homeviewBodyState();
}

class _homeviewBodyState extends State<homeviewBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text with enhanced style
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontWeight: FontWeight.bold, // Make the text bold
                      fontSize: 32, // Large font size
                      color: Colors.black87, // Darker text color
                      letterSpacing: 1.2, // Slightly increase letter spacing
                    ),
                  ),
                  // Location icon with added styling
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50, // Light blue background
                      shape: BoxShape.circle, // Make the container circular
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26, // Subtle shadow
                          offset: Offset(0, 2), // Position the shadow
                          blurRadius: 6, // Blur the shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(8), // Padding around the icon
                    child: Icon(
                      Icons.location_on,
                      color: Colors.blue, // Icon color
                      size: 24, // Icon size
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFFF3F8FE),
                borderRadius: BorderRadius.circular(24),
              ),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "find place to visit",
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: "Location"),
              Tab(text: "Hotels"),
              Tab(text: "Food"),
              Tab(text: "Adventure"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: TabBarView(controller: _tabController, children: [
              buildtabcontent("Location"),
              buildtabcontent("Hotels"),
              buildtabcontent("Food"),
              buildtabcontent("Adventure"),
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0XFF176FF2),
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ]),
    ));
  }

  Widget buildtabcontent(String tab) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF232323))),
                Text('See all',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0XFF176FF2))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
