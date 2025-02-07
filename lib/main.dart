  import 'package:flutter/material.dart';
  import 'help.dart';
  import 'detail.dart';
  import 'editprofilename.dart';
  import 'landpage.dart';
  import 'setting.dart';
  import 'terms.dart';
  import 'login.dart';
  import 'profile.dart';
  import 'register.dart';
  import 'about.dart';
  import 'transaction.dart';
  import 'crud.dart';
  import 'dashboard.dart';
  import 'notification.dart';
  import 'favorite.dart';
  import 'package:shared_preferences/shared_preferences.dart';



  void main() {
    runApp(const MyApp());
  }

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      
      routes: {
        '/': (context) => const LandPage(), 
        '/login': (context) => const Login(),
        '/dashboard': (context) => const Dashboard(), 
         '/register': (context) => const Register(), 
         '/detail' : (context) => const Detail(),  
         '/crud' : (context) => const Crud(),  
         '/transaction' : (context) => const Transaction(),
         '/editprofilename': (context) => const Editprofilename(), 
         '/profile': (context) => const Profile(),
         '/favorite': (context) => const Favorite(), 
         '/help': (context) => const Help(),  
         '/about': (context) =>  const About(),  
         '/setting': (context) => const Setting(),  
         '/notification': (context) => const notification(),  
        '/terms': (context) => const Terms(),
        
      },
    );
  }
} 

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  void initState() {
    super.initState();
    _checkFirstSeen();
  }

  _checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? seen = prefs.getBool('seen');
    if (seen == null || !seen) {
      // If not seen, navigate to LandPage and set seen to true
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LandPage()),
      );
      prefs.setBool('seen', true);
    } else {
      // If seen, navigate to Login
      Navigator.of(context).pushReplacementNamed('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(); // You can return a loading indicator here if needed
  }
}