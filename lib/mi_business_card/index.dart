import 'package:flutter/material.dart';

class BusinessCard extends StatelessWidget {
  const BusinessCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text('Business Card'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/512/194/194938.png',
            ),
          ),
          const Text(
            'Imam Daru Rismi',
            style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 40.0,
              color: Colors.white,
            ),
          ),
          Text(
            'Fullstack Developer',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              fontSize: 20.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            color: Colors.white,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '+62 812 7543 3320',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.teal,
              ),
              title: Text(
                'idrdaru@gmail.com',
                style: TextStyle(
                  color: Colors.teal.shade900,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
