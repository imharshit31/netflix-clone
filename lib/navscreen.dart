// import 'package:flutter/material.dart';
// import 'package:netflix/HomePage.dart';

// class navscreen extends StatefulWidget {
//   navscreen({Key? key}) : super(key: key);

//   @override
//   State<navscreen> createState() => _navscreenState();
// }

// class _navscreenState extends State<navscreen> {

//   final List<Widget> _screens = [
//     HomePage(),
//     Scaffold(),
//     Scaffold(),
//     Scaffold(),
//     Scaffold(),
//   ];

//   final Map<String, IconData> _icons =  {
//     'Home': Icons.home,
//     'Search': Icons.search,
//     'Coming Soom': Icons.queue_play_next,
//     'Downloads': Icons.file_download,
//     'Menu': Icons.menu,
//   };

//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//           items: _icons
//           .map(
//             (title, icon) => MapEntry(
//                 title,
//                 BottomNavigationBarItem(
//                   icon: Icon(
//                     icon,
//                     size: 30.0
//                   ),
//                   title: Text(title),
//                   )
//               ))
//         ),
//     );
//   }
// }
