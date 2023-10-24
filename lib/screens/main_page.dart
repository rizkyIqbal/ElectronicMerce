import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home/home_screen.dart';
import 'package:flutter_application_1/screens/main_controller.dart';
import 'package:get/get.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MainController>(
//       builder: (controller) {
//         return Scaffold(
//           body: Center(
//             child: MainController.widgetOptions[controller.selectedIndex.value],
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.white,
//             items: const <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home_outlined),
//                 label: 'Home',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_bag_outlined),
//                 label: 'Shop',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite_border),
//                 label: 'Favourite',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline_sharp),
//                 label: 'Profile',
//               ),
//             ],
//             currentIndex: controller.selectedIndex.value,
//             selectedItemColor: const Color(0xFFFF4242),
//             showUnselectedLabels: false,
//             unselectedItemColor: const Color(0xFFA7ABB1),
//             onTap: controller.onItemTapped,
//           ),
//         );
//       },
//     );
//   }
// }

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Index 2: Business',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFF4242),
        showUnselectedLabels: false,
        unselectedItemColor: const Color(0xFFA7ABB1),
        onTap: _onItemTapped,
      ),
    );
  }
}
