import 'package:flutter/material.dart';

class About extends StatelessWidget {
 const About ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Color(0xffff9800),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline, color: Color(0xffff9800)),
                SizedBox(width: 8),
                Text(
                  "About This App",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("This app helps you buy pianos online conveniently."),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.contact_mail, color: Color(0xffff9800)),
                SizedBox(width: 8),
                Text(
                  "Contact Developer",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text("Email: support@pianobuy.com"),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.verified, color: Color(0xffff9800)),
                SizedBox(width: 8),
                Text("App Version: 1.0.0"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}