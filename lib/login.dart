import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Welcome back!",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 22,
                    color: Color(0xff000000),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    "Login to Continue",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      color: Color(0xffa29b9b),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image(
                      image: AssetImage("assets/images/download-removebg-preview.png"),
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                TextField(
                  controller: TextEditingController(text: "example@gmail.com"),
                  obscureText: false,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff7c7878),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: TextEditingController(text: "123456"),
                  obscureText: true,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff7c7878),
                    ),
                    suffixIcon: const Icon(Icons.visibility, color: Color(0xff7b7c82)),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff000000), width: 1),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xffff9800),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  color: const Color(0xffff9800),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/register');
                  },
                  color: const Color(0x85e8c13a),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Text(
                    "Create account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      color: Color(0xffff9800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
