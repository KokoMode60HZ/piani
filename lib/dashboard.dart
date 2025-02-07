///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: const EdgeInsets.all(0),
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: 160,
            decoration: BoxDecoration(
              color: const Color(0xffff9800),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: const Color(0x4d9e9e9e), width: 1),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Expanded(
                        flex: 1,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                          child: Text(
                            "New Arrivals",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 20,
                              color: Color(0xffefefef),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: GestureDetector(
                          onTap: () {
                            // Navigasi ke halaman /crud
                            Navigator.of(context).pushNamed('/crud');
                          },
                          child: const Icon(
                            Icons.shopping_cart,
                            color: Color(0xffefefef),
                            size: 24,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: PopupMenuButton<String>(
                          icon: const Icon(
                            Icons.more_vert,
                            color: Color(0xffefefef),
                          ),
                          onSelected: (value) {
                            // Menangani navigasi sesuai opsi yang dipilih
                            switch (value) {
                              case 'Profile':
                                Navigator.of(context).pushNamed('/profile');
                                break;
                              case 'Settings':
                                Navigator.of(context).pushNamed('/setting');
                                break;
                              case 'Help/FAQ':
                                Navigator.of(context).pushNamed('/help');
                                break;
                              case 'About Us':
                                Navigator.of(context).pushNamed('/about');
                                break;
                              case 'Notifications':
                                Navigator.of(context)
                                    .pushNamed('/notification');
                                break;
                              case 'Terms & Privacy':
                                Navigator.of(context).pushNamed('/terms');
                                break;
                              case 'Favorite':
                                Navigator.of(context).pushNamed('/favorite');
                                break;
                                case 'LogOut':
                                Navigator.of(context).pushNamed('/login');
                                break;
                            }
                          },
                          itemBuilder: (BuildContext context) {
                            return [
                              const PopupMenuItem(
                                value: 'Profile',
                                child: Text('Profile'),
                              ),
                              const PopupMenuItem(
                                value: 'Settings',
                                child: Text('Settings'),
                              ),
                              const PopupMenuItem(
                                value: 'Help/FAQ',
                                child: Text('Help/FAQ'),
                              ),
                              const PopupMenuItem(
                                value: 'About Us',
                                child: Text('About Us'),
                              ),
                              const PopupMenuItem(
                                value: 'Notifications',
                                child: Text('Notifications'),
                              ),
                              const PopupMenuItem(
                                value: 'Terms & Privacy',
                                child: Text('Terms & Privacy'),
                              ),
                              const PopupMenuItem(
                                value: 'Favorite',
                                child: Text('Favorite'),
                              ),
                               const PopupMenuItem(
                                value: 'LogOut',
                                child: Text('LogOut'),
                              ),
                            ];
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                    child: TextField(
                      controller: TextEditingController(),
                      obscureText: false,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        color: Color(0xff000000),
                      ),
                      decoration: InputDecoration(
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(
                              color: Color(0x00ffffff), width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(
                              color: Color(0x00ffffff), width: 1),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          borderSide: const BorderSide(
                              color: Color(0x00ffffff), width: 1),
                        ),
                        hintText: "Search by products, prices",
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff939393),
                        ),
                        filled: true,
                        fillColor: const Color(0xfff9f9f9),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        prefixIcon: const Icon(Icons.search,
                            color: Color(0xff939393), size: 24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GridView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 0,
                childAspectRatio: 0.55,
              ),
              children: [
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                           GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 5,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(8),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 9, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child:GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                      child: Text(
                                        "Rs. 2200.00",
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontStyle: FontStyle.normal,
                                          fontSize: 14,
                                          color: Color(0xff3a57e8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child: GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 4, 0, 8),
                                // child:RatingBar.builder(
                                // initialRating: 53,
                                // unratedColor: Color(0xff9e9e9e),
                                // itemBuilder: (context, index) => Icon(
                                // Icons.star,
                                // color:Color(0xffffc107)
                                // ),
                                // itemCount: 5,
                                // itemSize: 20,
                                // direction: Axis.horizontal,
                                // allowHalfRating: false,
                                // onRatingUpdate: (value) {},
                                // ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  padding: const EdgeInsets.all(0),
                  width: 200,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xffffffff),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          ///***If you have exported images you must have to copy those images in assets/images directory.
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/detail'); // Ganti dengan rute yang diinginkan
                            },
                            child: Image(
                              image: const AssetImage(
                                  "assets/images/download.png"),
                              height: MediaQuery.of(context).size.height * 0.2,
                              width: MediaQuery.of(context).size.width,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 8, 8, 0),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: const Color(0xffa0a0a0),
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: const Color(0x4d9e9e9e), width: 1),
                            ),
                            child:GestureDetector(
                              onTap: () {
                                // Menampilkan notifikasi ketika ikon ditekan
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        "Item has been added to favorites!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.green,
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: const Color(0xffff9800),
                                ),
                                padding: const EdgeInsets.all(12),
                                child: const Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Text(
                                "GB1K",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 4, 0, 8),
                                child: RatingBar.builder(
                                  initialRating: 35,
                                  unratedColor: const Color(0xff9e9e9e),
                                  itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Color(0xffffc107)),
                                  itemCount: 5,
                                  itemSize: 20,
                                  direction: Axis.horizontal,
                                  allowHalfRating: false,
                                  onRatingUpdate: (value) {},
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Price:",
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xff393939),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                                    child: Text(
                                      "Rs. 2200.00",
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff3a57e8),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
