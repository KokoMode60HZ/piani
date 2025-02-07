import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Conditions / Privacy Policy"),
        backgroundColor: Color(0xffff9800),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              children: [
                Icon(Icons.rule, color: Color(0xffff9800)),
                SizedBox(width: 8),
                Text(
                  "Terms & Conditions",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("Here are the terms and conditions for using this app."),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.privacy_tip, color: Color(0xffff9800)),
                SizedBox(width: 8),
                Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("We respect your privacy and ensure data protection."),
          ],
        ),
      ),
    );
  }
}