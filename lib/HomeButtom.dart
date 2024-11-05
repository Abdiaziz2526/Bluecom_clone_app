
import 'package:bluecome_clone/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomeBottom extends StatefulWidget {
  const HomeBottom({super.key});

  @override
  _HomeBottomState createState() => _HomeBottomState();
}

class _HomeBottomState extends State<HomeBottom> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Homescreen(),
    Text("Speed Test"),
    Text("Recharge"),
    Text("Payments"),
    Text("Account"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0XFF34287a),
        unselectedItemColor: Colors.grey,
        iconSize: 22, // Set a smaller icon size for a compact look
        selectedLabelStyle: TextStyle(fontSize: 10), // Smaller font for selected label
        unselectedLabelStyle: TextStyle(fontSize: 10), // Smaller font for unselected label
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.time_circle),
            label: 'Speed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: Colors.transparent), // Placeholder for center button
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.document),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.profile),
            label: 'Account',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      
      floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    SizedBox(height: 20), // Adjust top spacing if needed
    SizedBox(
      width: 50, // Set custom width
      height: 50, // Set custom height
      child: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
        child: Icon(IconlyLight.category, size: 30, color: Colors.white,
        ), // Adjust icon size to fit well
        backgroundColor: Color(0XFF34287a),
        shape: CircleBorder(), 
        elevation: 0,
      ),
    ),
    SizedBox(height: 4), 
    Text(
      'Recharge',
      style: TextStyle(color: Color(0XFF34287a), fontSize: 12),
    ),
  ],
)

    );
  }
}
