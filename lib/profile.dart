import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffff9800),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // Kembali ke halaman sebelumnya
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xffffffff),
            size: 24,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/editprofilename'); // Navigasi ke halaman edit
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(
                Icons.edit,
                color: Color(0xffffffff),
                size: 24,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
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
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/jeff-the-killer.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/editprofilename'); // Edit photo
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xffff9800),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Name Section
              _buildProfileDetail(
                context,
                title: "Name",
                value: "Sosok Hitam",
                icon: Icons.person,
                editRoute: '/editprofilename',
              ),
              // Bio Section
              _buildProfileDetail(
                context,
                title: "Bio",
                value: "Makhluk halus yang tidak terlihat tetapi nyata.",
                icon: Icons.info,
                editRoute: '/editprofilename',
              ),
              // Favorite Section
              _buildProfileDetail(
                context,
                title: "Favorite",
                value: "0 selected",
                icon: Icons.favorite,
                editRoute: '/editprofilename',
              ),
              // Phone Section
              _buildProfileDetail(
                context,
                title: "Phone",
                value: "+91 1234056789",
                icon: Icons.call,
                editRoute: '/editprofilename',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper to create a profile detail tile
  Widget _buildProfileDetail(BuildContext context,
      {required String title,
      required String value,
      required IconData icon,
      required String editRoute}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xffff9800), size: 24),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xff424141),
                  ),
                ),
                Text(
                  value,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(editRoute); // Navigasi ke halaman edit
            },
            child: const Icon(
              Icons.edit,
              color: Color(0xff424242),
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
