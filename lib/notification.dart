import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification ({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        backgroundColor: Color(0xffff9800),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.update, color: Color(0xffff9800)),
            title: Text("App Update Available"),
            subtitle: Text("Version 1.1 is now available for download."),
          ),
          ListTile(
            leading: Icon(Icons.check_circle, color: Color(0xff4caf50)),
            title: Text("Transaction Successful"),
            subtitle: Text("Your order for the Yamaha Piano was successful."),
          ),
          ListTile(
            leading: Icon(Icons.local_offer, color: Color(0xffff9800)),
            title: Text("Promotional Offer"),
            subtitle: Text("Get 10% off on your next purchase!"),
          ),
        ],
      ),
    );
  }
}