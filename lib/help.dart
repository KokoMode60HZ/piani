import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  // Method to launch app or fallback to a web URL
  void _launchAppOrWeb(
      BuildContext context, String appScheme, String fallbackUrl) async {
    if (await canLaunch(appScheme)) {
      await launch(appScheme); // Open the app
    } else if (await canLaunch(fallbackUrl)) {
      await launch(fallbackUrl); // Open the fallback URL
    } else {
      _showError(context, "Could not open the app or the web URL.");
    }
  }

  // Show error message using SnackBar
  void _showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help / FAQ"),
        backgroundColor: const Color(0xffff9800),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const ListTile(
              leading: Icon(Icons.account_circle, color: Color(0xffff9800)),
              title: Text("How to register?"),
              subtitle: Text("Learn the steps to create an account."),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/editprofilename');
            },
            child: const ListTile(
              leading: Icon(Icons.edit, color: Color(0xffff9800)),
              title: Text("How to update my profile?"),
              subtitle: Text("Find out how to change your profile information."),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.featured_play_list, color: Color(0xffff9800)),
            title: Text("What features does this app offer?"),
            subtitle: Text("Explore the functionalities provided."),
          ),
          const Divider(height: 32),
          GestureDetector(
            onTap: () {
              _launchAppOrWeb(
                context,
                'fb://', // Facebook App scheme
                'https://facebook.com', // Fallback URL
              );
            },
            child: const ListTile(
              leading: Icon(Icons.facebook, color: Color(0xff3b5998)),
              title: Text("Open Facebook"),
              subtitle: Text("Launch Facebook app or fallback to browser."),
            ),
          ),
          GestureDetector(
            onTap: () {
              _launchAppOrWeb(
                context,
                'instagram://', // Instagram App scheme
                'https://instagram.com', // Fallback URL
              );
            },
            child: const ListTile(
              leading: Icon(FontAwesomeIcons.instagram, color: Color(0xffE4405F)),
              title: Text("Open Instagram"),
              subtitle: Text("Launch Instagram app or fallback to browser."),
            ),
          ),
          GestureDetector(
            onTap: () {
              _launchAppOrWeb(
                context,
                'mailto:', // Email App scheme
                'https://gmail.com', // Fallback URL
              );
            },
            child: const ListTile(
              leading: Icon(Icons.email, color: Color(0xffff9800)),
              title: Text("Open Gmail"),
              subtitle: Text("Launch Gmail app or fallback to browser."),
            ),
          ),
        ],
      ),
    );
  }
}
