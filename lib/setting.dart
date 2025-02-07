import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
   const Setting ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Color(0xffff9800),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SwitchListTile(
            title: Text("Enable Notifications"),
            value: true,
            onChanged: (bool value) {},
          ),
          ListTile(
            leading: Icon(Icons.language, color: Color(0xffff9800)),
            title: Text("Change Language"),
            subtitle: Text("English"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.color_lens, color: Color(0xffff9800)),
            title: Text("Change Theme Color"),
            subtitle: Text("Default Orange"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}