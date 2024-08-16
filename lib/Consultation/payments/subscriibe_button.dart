import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:webview_flutter/webview_flutter.dart';

class SubscriibeButton extends StatefulWidget {
  const SubscriibeButton({super.key});

  @override
  State<SubscriibeButton> createState() => _SubscriibeButtonState();
}

class _SubscriibeButtonState extends State<SubscriibeButton> {
  String urlMidtrans = "";
  WebViewController? controller;
  bool isSubscriber = false;


  @override
  Widget build(BuildContext context) {
    return urlMidtrans == "" ? Container(
      padding: EdgeInsets.only(top: 0),
      child: Column(
        children: [
          ElevatedButton(onPressed: isSubscriber == false ? subscribe : (){}, child: Text(isSubscriber == false ? 'Subscribe!' : 'Thankyou'),style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),),
        ],
      ),
    ) : WebViewWidget(controller: controller!);
  }

   subscribe() async{
    final String date = DateTime.now().toString();
    final String subscribeID = "subsriber-${date}";

    try {
      final response = await http.post(
        Uri.parse('http://10.0.2.2:3000/api/subscribe'),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          "id": subscribeID,
        }),
      );
      print('response from node.js: ${response.body}');


      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody['success']) {
          setState(() {
            urlMidtrans =
            'https://app.sandbox.midtrans.com/snap/v2/vtweb/${responseBody['token']}';
            print(urlMidtrans);

            controller = WebViewController()
              ..setJavaScriptMode(JavaScriptMode.unrestricted)
              ..setBackgroundColor(const Color(0x00000000))
              ..setNavigationDelegate(
                NavigationDelegate(
                  onProgress: (int progress) {
                    // Update loading bar.
                  },
                  onNavigationRequest: (NavigationRequest request) {
                    if (request.url.startsWith('http://example.com')) {
                      setState(() {
                        isSubscriber == true;
                        urlMidtrans == "";
                      });
                      Navigator.pushNamed(context, '/');
                    }
                    return NavigationDecision.navigate;
                  },
                ),
              )
              ..loadRequest(Uri.parse(urlMidtrans));
          });
        } else {
          print('Failed to get token: ${responseBody['token']}');
        }
      } else {
        print('Failed to post data: ${response.statusCode}');
      }

    } catch (e) {
      print('Error: $e');
    }
  }
}
