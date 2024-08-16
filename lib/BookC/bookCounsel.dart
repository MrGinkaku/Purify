// import 'package:flutter/material.dart';
//  // Sesuaikan path ini dengan struktur direktori Anda

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Booking Consultation',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BookingConsultation(),
//     );
//   }
// }

// class BookingConsultation extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               'Booking Consultation',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.normal,
//               ),
//             ),
//           ],
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {},
//         ),
//       ),
//       body: Column(
//         children: [
//           Container(
//             color: Colors.blue,
//             padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//             child: Row(
//               children: [
//                 CircleAvatar(
//                   radius: 35,
//                   backgroundImage: AssetImage('MYAPP/assets/doctor.jpg'), // Ganti dengan path gambar Anda
//                 ),
//                 SizedBox(width: 16),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Dr. Bruce Scott Hoffman, PHD',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.white,
//                       ),
//                     ),
//                     Text(
//                       'Psychiatrist',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.white70,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'About Doctor',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                     ),
//                   ),
//                   SizedBox(height: 2),
//                   Text(
//                     'Dr. Bruce Scott Hoffman, PHD is a Clinical Professor of Psychiatry, Obstetrics, Gynecology, and Reproductive Sciences at the Icahn School of Medicine at Mount Sinai, which he first joined in 2007. He is a specialist in Psychiatry at Mount Sinai Medical Center. He also has a private practice in New York City.',
//                     style: TextStyle(
//                       fontSize: 14,
//                     ),
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     'Special',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.normal,
//                       fontStyle: FontStyle.italic,
//                     ),
//                   ),
//                   SizedBox(height: 0),
//                   ElevatedButton(
//                     onPressed: () {},
//                     child: Text(
//                       'Psychiatry',
//                       style: TextStyle(color: Colors.white), // Set text color to white
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(50, 25),
//                       backgroundColor: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
//                       ), // Set background color to blue
//                     ),
//                   ),
//                   SizedBox(height: 4),
                  

//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   //   // Suggested code may be subject to a license. Learn more: ~LicenseLog:3965049835.
//                   //   children: [
//                   //     Padding(
//                   //       padding: const EdgeInsets.only(right: 8.0), // Adjust spacing as needed
//                   //       child: ElevatedButton(
//                   //         onPressed: () {},
//                   //         child: Text(
//                   //           'Video Call',
//                   //           style: TextStyle(color: Colors.black),
//                   //         ),
//                   //         style: ElevatedButton.styleFrom(
//                   //           minimumSize: Size(60, 35),
//                   //           shape: RoundedRectangleBorder(
//                   //             borderRadius: BorderRadius.circular(10.0),
//                   //           ),
//                   //         ),
//                   //       ),
//                   //     ),
//                   //     Padding(
//                   //       padding: const EdgeInsets.only(right: 8.0), // Adjust spacing as needed
//                   //       child: ElevatedButton(
//                   //         onPressed: () {},
//                   //         child: Text(
//                   //           'Chat',
//                   //           style: TextStyle(color: Colors.black),
                          
//                   //   ),
//                   //         style: ElevatedButton.styleFrom(
//                   //           minimumSize: Size(60, 35),
//                   //           shape: RoundedRectangleBorder(
//                   //             borderRadius: BorderRadius.circular(10.0),
//                   //           ),
//                   //         ),
//                   //       ),
//                   //     ),
//                   //     ElevatedButton( // No padding needed for the last button
//                   //       onPressed: () {},
//                   //       child: Text(
//                   //         'Order Counseling',
//                   //         style: TextStyle(color: Colors.black),
//                   //       ),
//                   //       style: ElevatedButton.styleFrom(
//                   //         minimumSize: Size(60, 35),
//                   //         shape: RoundedRectangleBorder(
//                   //           borderRadius: BorderRadius.circular(10.0),
//                   //         ),
//                   //         padding: EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
//                   //       ),
//                   //     ),
//                   //   ],

//                   // ),
//                   // SizedBox(height: 22),
                  







//                   //Chat Section

//                   // Center(
//                   //   child: Text(
//                   //     'Avalaible Times : ',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 18,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   // ),
//                   // SizedBox(height: 10),
//                   // Center(
//                   //   child: Text(
//                   //     'Monday : 10.00 - 13.00',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 18,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   // ),
//                   // Center(
//                   //   child: Text(
//                   //     'Tuesday : 11.00 - 14.00',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 18,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   // ),
//                   // Center(
//                   //   child: Text(
//                   //     'Wednesday : 10.30 - 13.30',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 18,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   // ),
//                   // SizedBox(height: 10),
//                   // Text(
//                   //     'status : currently in conversation',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 14,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   //   Text(
//                   //     'Estimated Reply Times : +- 1 min(s)',
//                   //     textAlign: TextAlign.center, // Add textAlign property for center alignment
//                   //     style: TextStyle(
//                   //       fontSize: 14,
//                   //       fontWeight: FontWeight.normal,
//                   //     ),
//                   //   ),
//                   //  SizedBox(height: 16),
//                   //  Center(
//                   //   child: ElevatedButton(
//                   //     onPressed: () {},
//                   //     child: Text(
//                   //     'Start the Conversation',
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







//                   //Video Call Section

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
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
