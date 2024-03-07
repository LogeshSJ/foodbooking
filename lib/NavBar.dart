// // import "package:flutter/material.dart";

// // class NavBar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Drawer(
// //       child: ListView(
// //         // Remove padding
// //         padding: EdgeInsets.zero,
// //         children: [
// //           UserAccountsDrawerHeader(
// //             accountName: Text('Logesh SJ'),
// //             accountEmail: Text('01sjlogesh@gmail.com'),
// //             currentAccountPicture: CircleAvatar(
// //               child: ClipOval(
// //                 child: Image.network(
// //                   'https://plus.unsplash.com/premium_photo-1675285478601-d80e7e7ddc6e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aHVtYW4lMjBlbW9qaXxlbnwwfHwwfHx8MA%3D%3D',
// //                   fit: BoxFit.cover,
// //                   width: 90,
// //                   height: 90,
// //                 ),
// //               ),
// //             ),
// //             decoration: const BoxDecoration(
// //               color: Colors.blue,
// //               image: DecorationImage(
// //                   fit: BoxFit.fill,
// //                   image: NetworkImage(
// //                       'https://images.unsplash.com/photo-1484659619207-9165d119dafe?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')),
// //             ),
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.person),
// //             title: Text('Profile'),
// //             onTap: () => null,
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.assignment_turned_in_outlined),
// //             title: Text('My Orders'),
// //             onTap: () => null,
// //           ),
// //           ListTile(
// //             leading: const Icon(Icons.paypal),
// //             title: const Text('Payments'),
// //             onTap: () => null,
// //           ),
// //           const ListTile(
// //             leading: Icon(Icons.settings),
// //             title: Text('setting'),
// //           ),
// //           Divider(),
// //           ListTile(
// //             title: Text('Loout'),
// //             leading: Icon(Icons.exit_to_app),
// //             onTap: () => null,
// //           ),
          
// //         ],
// //       ),
// //     );
// //   }
// // }


// import 'package:flutter/material.dart';
// import 'package:foodbooking/about_screen.dart';
// import 'package:foodbooking/screen/Welcome/welcome_screen.dart';

// class NavBar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         // Remove padding
//         padding: EdgeInsets.zero,
//         children: [
//           UserAccountsDrawerHeader(
//             accountName: Text('Logesh SJ'),
//             accountEmail: Text('01sjlogesh@gmail.com'),
//             currentAccountPicture: CircleAvatar(
//               child: ClipOval(
//                 child: Image.network(
//                   'https://plus.unsplash.com/premium_photo-1675285478601-d80e7e7ddc6e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aHVtYW4lMjBlbW9qaXxlbnwwfHwwfHx8MA%3D%3D',
//                   fit: BoxFit.cover,
//                   width: 90,
//                   height: 90,
//                 ),
//               ),
//             ),
//             decoration: const BoxDecoration(
//               color: Colors.blue,
//               image: DecorationImage(
//                 fit: BoxFit.fill,
//                 image: NetworkImage(
//                   'https://images.unsplash.com/photo-1484659619207-9165d119dafe?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
//                 ),
//               ),
//             ),
//           ),
//           ListTile(
//             leading: const Icon(Icons.person),
//             // textColor: Colors.red,
//             iconColor: Colors.red,
//             title: Text('Profile'),
//             onTap: () => null,
//           ),
//           ListTile(
//             leading: const Icon(Icons.assignment_turned_in_outlined),
//             title: Text('My Orders'),
//             // textColor: Colors.red,
//             iconColor: Colors.red,
//             onTap: () => null,
//           ),
//           ListTile(
//             leading: const Icon(Icons.paypal),
//             // textColor: Colors.red,
//             title: const Text('Payments'),
//             iconColor: Colors.red,
//             onTap: () => null,
//           ),
//           const ListTile(
//             leading: Icon(Icons.settings),
//             // textColor: Colors.red,
//             iconColor: Colors.red,
//             title: Text('setting'),
//           ),
//           ListTile(
//             leading: const Icon(Icons.info),
//             // textColor: Colors.red,
//             title: const Text('About'),
//             iconColor: Colors.red,
//             onTap: () {
//   Navigator.pop(context); // Close drawer
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => AboutScreen()),
//   );
// },
//           ),
//           Divider(),
//           ListTile(
//             title: Text('Logout'),
//             textColor: Colors.red,
//             iconColor: Colors.red,
//             leading: Icon(Icons.exit_to_app),
//             onTap: () {
//               // Perform logout
//               // Navigate to login page
//               Navigator.pop(context); // Close drawer
//               Navigator.pushReplacement( // Replace current page with login page
//                 context,
//                 MaterialPageRoute(builder: (context) => WelcomeScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:foodbooking/about_screen.dart';
import 'package:foodbooking/screen/Welcome/welcome_screen.dart';
import 'package:foodbooking/profile.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container( // Wrap Drawer with Container
        color: Colors.white, // Set background color to red
        child: ListView(
          // Remove padding
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Logesh SJ'),
              accountEmail: Text('01sjlogesh@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://plus.unsplash.com/premium_photo-1675285478601-d80e7e7ddc6e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8aHVtYW4lMjBlbW9qaXxlbnwwfHwwfHx8MA%3D%3D',
                    fit: BoxFit.cover,
                    width: 90,
                    height: 90,
                  ),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1484659619207-9165d119dafe?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
             textColor: Colors.black,
              iconColor: Colors.black,
              title: Text('Profile'),
               onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment_turned_in_outlined),
              title: Text('My Orders'),
              textColor: Colors.black,
              iconColor: Colors.black,
              onTap: () => null,
            ),
            ListTile(
              leading: const Icon(Icons.paypal),
              textColor: Colors.black,
              title: const Text('Payments'),
              iconColor: Colors.black,
              onTap: () => null,
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              textColor: Colors.black,
              iconColor: Colors.black,
              title: Text('setting'),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              textColor: Colors.black,
              title: const Text('About'),
              iconColor: Colors.black,
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutScreen()),
                );
              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              textColor: Colors.black,
              iconColor: Colors.black,   
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                // Perform logout
                // Navigate to login page
                Navigator.pop(context); // Close drawer
                Navigator.pushReplacement( // Replace current page with login page
                  context,
                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
