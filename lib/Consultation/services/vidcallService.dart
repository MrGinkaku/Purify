import 'package:flutter/material.dart';

class Vidcall extends StatelessWidget {
  const Vidcall({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [const Center(
                    child:Text(
                      'Get Consultation Services with Dr. Bruce Scott Hoffman, PHD now',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: Text(
                      'Consultation Fees Starting from IDR 39,000/hour',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                  
                  const Center(
                    child: Text(
                      'Consultation services can be via chat, voice call, or video call',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity,50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                          backgroundColor: Colors.blue,
                        ),
                      child: const Text(
                      'Get Instant Service',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        ), // Set text color to white
                    ),
                      
                    ),
                  ),]
    ));
  }
}