import 'package:flutter/material.dart';

class Editprofilename extends StatelessWidget {
  
  const Editprofilename({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        elevation: 2,
        centerTitle: true,
        backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Edit Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Picture Section
            Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xffff9800), width: 4),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/jeff-the-killer.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      // Add functionality to upload new picture
                    },
                    mini: true,
                    backgroundColor: const Color(0xffff9800),
                    child: const Icon(Icons.camera_alt, color: Colors.white, size: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Name Section
            const Text(
              "Name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff424141),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your name",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.person, color: Color(0xffff9800)),
              ),
            ),
            const SizedBox(height: 20),

            // Phone Number Section
            const Text(
              "Phone Number",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff424141),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: "Enter your phone number",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: const Icon(Icons.phone, color: Color(0xffff9800)),
              ),
            ),
            const SizedBox(height: 20),

            // Bio Section
            const Text(
              "Bio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff424141),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: "Tell us a bit about yourself",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Save Button
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffff9800),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                ),
                onPressed: () {
                   Navigator.pushNamed(context, '/dashboard');
                },
                icon: const Icon(Icons.save, color: Colors.white),
                label: const Text(
                  "Save Changes",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
