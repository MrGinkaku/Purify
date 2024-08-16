import 'package:flutter/material.dart';
import 'package:project_ppb/Consultation/payments/subscriibe_button.dart';
import 'package:project_ppb/Consultation/services/chatService.dart';
import 'package:project_ppb/Consultation/services/ordercounselService.dart';
import 'package:project_ppb/Consultation/services/vidcallService.dart';

class tabBar extends StatefulWidget {
  const tabBar({super.key});

  @override
  State<tabBar> createState() => _tabbarState();
}

class _tabbarState extends State<tabBar> {
  int i = 0;
  Color buttonColor = Colors.blue;
  bool isSubscriber = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all( i==0 ? buttonColor : Colors.white),
              ),
                onPressed: () {
                  setState(() {
                    i = 0;
                  });
                },
                child: Text("Video Call", style: TextStyle(
                  color: ( i==0 ? Colors.white : Colors.black)
                ),)),
            TextButton(style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all( i==1 ? buttonColor : Colors.white),
              ),
                onPressed: () {
                  setState(() {
                    i = 1;
                  });
                },
                child: Text("Chat",style: TextStyle(
                  color: ( i==1 ? Colors.white : Colors.black)
                ),)),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all( i==2 ? buttonColor : Colors.white),
              ),
                onPressed: () {
                  setState(() {
                    i = 2;
                  });
                },
                child: Text("Order Counseling",style: TextStyle(
                  color: ( i==2 ? Colors.white : Colors.black)
                ),))
          ],
        ),
        getService(i) 
      ],
    ));
  }
}

getService(int i){
  switch (i) {
    case 0:
      return const Vidcall();
    case 1:
      return const Chatservice();
    case 2:
    return const Counselservice();
    default:
  }
}
