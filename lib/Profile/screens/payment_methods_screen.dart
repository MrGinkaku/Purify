import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment Methods'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('VISA **** 2705'),
              subtitle: Text('05/27'),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.credit_card),
              title: Text('MasterCard **** 3423'),
              subtitle: Text('04/24'),
            ),
          ),
          const SizedBox(height: 20),
          
          ElevatedButton(
             onPressed: () {
              // Tambahkan logika untuk menambahkan kartu baru
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Ganti dengan warna yang diinginkan
            ),
            child: const Text('Add New Card', selectionColor: Colors.black,),
          ),
          const SizedBox(height: 20),
          const Text(
            'Payment History',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/doctor1.jpg'),
            ),
            title: Text('Dr Rebbeka'),
            subtitle: Text('28 Sep 2020 - IDR 39.000'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/doctor2.jpg'),
            ),
            title: Text('Dr. Ali Dale Morse'),
            subtitle: Text('11 Aug 2020 - IDR 39.000'),
          ),
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/doctor3.jpg'),
            ),
            title: Text('Dr Rafsan Jani'),
            subtitle: Text('1 Feb 2020 - IDR 39.000'),
          ),
        ],
      ),
    );
  }
}
