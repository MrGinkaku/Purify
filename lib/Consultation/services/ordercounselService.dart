import 'package:flutter/material.dart';

import 'package:horizontal_week_calendar/horizontal_week_calendar.dart';

class Counselservice extends StatefulWidget {
  const Counselservice({super.key});

  @override
  State<Counselservice> createState() => _CounselserviceState();
}

class _CounselserviceState extends State<Counselservice> {
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              HorizontalWeekCalendar(
                minDate: DateTime(2023, 12, 31),
                maxDate: DateTime(2030, 1, 31),
                initialDate: selectedDate,
                onDateChange: (date) {
                  setState(() {
                    selectedDate = date;
                  });
                },
                monthFormat: "MMMM yyyy",
                showNavigationButtons: true,
                weekStartFrom: WeekStartFrom.Monday,
                borderRadius: BorderRadius.circular(7),
                activeBackgroundColor: Colors.blue,
                activeTextColor: Colors.white,
                inactiveBackgroundColor: Colors.blue.withOpacity(.3),
                inactiveTextColor: Colors.white,
                disabledTextColor: Colors.grey,
                disabledBackgroundColor: Colors.grey.withOpacity(.3),
                activeNavigatorColor: Colors.blue,
                inactiveNavigatorColor: Colors.grey,
                monthColor: Colors.blue,
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // Suggested code may be subject to a license. Learn more: ~LicenseLog:3965049835.
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0), // Adjust spacing as needed
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(60, 35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text(
                            '11.00',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0), // Adjust spacing as needed
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(60, 35),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          child: const Text(
                            '12.00',
                            style: TextStyle(color: Colors.black),
                          
                    ),
                        ),
                      ),
                      ElevatedButton( // No padding needed for the last button
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(60, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                        ),
                        child: const Text(
                          '13.00',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton( // No padding needed for the last button
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(60, 35),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                        ),
                        child: const Text(
                          '14.00',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],

                  ),
                 Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(context: context, 
                        builder: (context) => AlertDialog(
                          title:  const Text('Booking Berhasil', textAlign: TextAlign.center),
                        content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(height: 10),
                              const Text('Your booking has been successfully saved.'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity,50.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                          backgroundColor: Colors.blue,
                        ),
                      child: const Text(
                      'Booking',
                      style: TextStyle(
                        color: Colors.white, 
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        ), // Set text color to white
                    ),
                      
                    ),
                  ),
            ],
          ),
        ),
      );
  }
}