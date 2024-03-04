// import 'package:flutter/material.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         automaticallyImplyLeading: false,
//         backgroundColor: Colors.red,
//         foregroundColor: Colors.white,
//         title: Text('Profile Page'),
//       ),
//       body: const SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CircleAvatar(
//                 radius: 50,
//                 backgroundImage: AssetImage('assets/user avatar.jpg')
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Logesh_Sparkzz',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 '[ Foodie Gold ]',
//                 style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Icon(Icons.star, color: Color.fromARGB(255, 244, 221, 21)),
//                   Icon(Icons.star, color: Color.fromARGB(255, 244, 221, 21)),
//                   Icon(Icons.star, color: Color.fromARGB(255, 244, 221, 21)),
//                   SizedBox(width: 10),
//                   // Text(
//                   //   '3.5',
//                   //   style: TextStyle(fontSize: 16),
//                   // ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Icon(Icons.email),
//                   SizedBox(width: 10),
//                   Text('01sjlogesh@gmail.com'),
//                 ],
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Icon(Icons.phone),
//                   SizedBox(width: 10),
//                   Text('+1234567890'),
//                 ],
//               ),
              
//               SizedBox(height: 20),
//               Text(
//                 'Bio:',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10),
//               Text(
//                 'Food enthusiast and Gold member. I love exploring new restaurants and cuisines. Always on the lookout for the next best dish!',
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // void main() {
// //   runApp(MaterialApp(
// //     home: ProfilePage(),
// //   ));
// // }

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red,
        title: Text('Profile Page'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/user_avatar.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Logesh_Sparkzz',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                '[ Foodie Gold ]',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 10),
                  Text(
                    '3.5',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.email, color: Colors.red),
              title: Text('01sjlogesh@gmail.com'),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.phone, color: Colors.red),
              title: Text('+1234567890'),
            ),
            SizedBox(height: 20),
            Text(
              'Bio:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Food enthusiast and Gold member. I love exploring new restaurants and cuisines. Always on the lookout for the next best dish!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}
