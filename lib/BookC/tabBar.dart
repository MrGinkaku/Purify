// import 'package:flutter/material.dart';

// class TabBarApp extends StatelessWidget {
//   const TabBarApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(useMaterial3: true),
//       home: TabBarConsultation(),
//     );
//   }
// }

// class TabBarConsultation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Consultation Options'),
//           centerTitle: true,
//         ),
//         body: Column(
//           children: [
//             Container(
//               height: 70,
//               color: Colors.grey[300],
//               child: TabBar(
//                 physics: const ClampingScrollPhysics(),
//                 indicatorSize: TabBarIndicatorSize.label,
//                 indicator: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.blue,
//                 ),
//                 tabs: [
//                   Tab(
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Video Call"),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Chat"),
//                       ),
//                     ),
//                   ),
//                   Tab(
//                     child: Container(
//                       height: 50,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       child: Align(
//                         alignment: Alignment.center,
//                         child: Text("Order Counseling"),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   _buildVideoCallList(),
//                   _buildChatList(),
//                   _buildOrderCounselingList(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildVideoCallList() {
//     return ListView.separated(
//       child : Column(
//         //Video Call Section

//                   // Center(
//                   //   child: Text(
//                   //     'Get Consultation Services with Dr. Bruce Scott Hoffman, PHD now',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 20,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   // ),
//                   // SizedBox(height: 8),
//                   // Center(
//                   //   child: Text(
//                   //     'Consultation Fees Starting from IDR 39,000/hour',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 14,
//                   //       color: Colors.grey[600],
//                   //     ),
//                   //   ),
//                   // ),
//                   // SizedBox(height: 16),
//                   // Center(
//                   //   child: Text(
//                   //     'Consultation services can be via chat, voice call, or video call',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 14,
//                   //     ),
//                   //   ),
//                   // ),

//                   // SizedBox(height: 16),
//                   // Center(
//                   //   child: ElevatedButton(
//                   //     onPressed: () {},
//                   //     child: Text(
//                   //     'Get Instant Service',
//                   //     style: TextStyle(
//                   //       color: Colors.white, 
//                   //       fontSize: 18,
//                   //       fontWeight: FontWeight.normal,
//                   //       ), // Set text color to white
//                   //   ),
//                   //     style: ElevatedButton.styleFrom(
//                   //         minimumSize: Size(double.infinity,50.0),
//                   //         shape: RoundedRectangleBorder(
//                   //           borderRadius: BorderRadius.circular(10.0),
//                   //         ),
//                   //         padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
//                   //         backgroundColor: Colors.blue,
//                   //       ),
                      
//                   //   ),
//                   // ),
//       ),
//     );
//   }

//   Widget _buildChatList() {
//     return ListView.separated(
//       padding: EdgeInsets.all(15),
//       itemCount: 20,
//       separatorBuilder: (BuildContext context, int index) => const Divider(),
//       itemBuilder: (context, index) {
//         return ListTile(
//           onTap: () {
//             // Tambahkan logika untuk aksi saat item dipilih
//           },
//           title: Text("Chat List $index"),
//           subtitle: Text("Consultation UI"),
//           trailing: Icon(Icons.arrow_circle_right_sharp),
//         );
//       },
//     );
//   }

//   Widget _buildOrderCounselingList() {
//     return ListView.separated(
//       padding: EdgeInsets.all(15),
//       itemCount: 20,
//       separatorBuilder: (BuildContext context, int index) => const Divider(),
//       itemBuilder: (context, index) {
//         return ListTile(
//           onTap: () {
//             // Tambahkan logika untuk aksi saat item dipilih
//           },
//           title: Text("Order Counseling List $index"),
//           subtitle: Text("Consultation UI"),
//           trailing: Icon(Icons.arrow_circle_right_sharp),
//         );
//       },
//     );
//   }
// }

// void main() {
//   runApp(const TabBarApp());
// }
