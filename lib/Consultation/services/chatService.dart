import 'package:flutter/material.dart';

class Chatservice extends StatelessWidget {
  const Chatservice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [const Center(
                    child: Text(
                      'Avalaible Times : ',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Center(
                    child: Text(
                      'Monday : 10.00 - 13.00',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Tuesday : 11.00 - 14.00',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      'Wednesday : 10.30 - 13.30',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                      'status : currently in conversation',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Text(
                      'Estimated Reply Times : +- 1 min(s)',
                      textAlign: TextAlign.center, // Add textAlign property for center alignment
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
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
                      'Start the Conversation',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        ), // Set text color to white
                    ),
                      
                    ),
                  ),]),
    );
  }
}