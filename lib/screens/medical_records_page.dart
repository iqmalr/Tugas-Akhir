import 'package:flutter/material.dart';

class MedicalRecordsPage extends StatefulWidget {
  const MedicalRecordsPage({Key? key}) : super(key: key);
  @override
  _MedicalRecordsPageState createState() => _MedicalRecordsPageState();
}

class _MedicalRecordsPageState extends State<MedicalRecordsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 20),
            const Text(
              'Medical Record',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            // First Card
            Card(
              child: ListTile(
                title: Text('Medical Record 1'),
                subtitle: Text('Details of Medical Record 1'),
                onTap: () {
                  // Handle the tap on the first card
                },
              ),
            ),
            SizedBox(height: 10),
            // Second Card
            Card(
              child: ListTile(
                title: Text('Medical Record 2'),
                subtitle: Text('Details of Medical Record 2'),
                onTap: () {
                  // Handle the tap on the second card
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
