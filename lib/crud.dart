import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Crud extends StatelessWidget {
  const Crud({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffebebeb),
      appBar: AppBar(
        elevation: 4,
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffff9800),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        title: const Text(
          "Cart",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: 18,
            color: Color(0xff000000),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Color(0xff212435),
            size: 24,
          ),
        ),
        actions: const [
          Icon(Icons.add, color: Color(0xff212435), size: 24),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            color: const Color(0xffffffff),
            shadowColor: const Color(0xff000000),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                  child: Image(
                    image: AssetImage("assets/images/download.png"),
                    height: 130,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "GB1K",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 4),
                          child: Text(
                            "\$11000",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        RatingBar.builder(
                          initialRating: 4.5,
                          unratedColor: const Color(0xff9e9e9e),
                          itemBuilder: (context, index) =>
                              const Icon(Icons.star, color: Color(0xffffc107)),
                          itemCount: 5,
                          itemSize: 30,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          onRatingUpdate: (value) {},
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/transaction');
                              },
                              child: Chip(
                                labelPadding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 8),
                                label: const Text(
                                  "BUY",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                backgroundColor: const Color(0xffff9800),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            GestureDetector(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("You liked this item!"),
                                    duration: Duration(seconds: 2),
                                    backgroundColor: Colors.pink,
                                  ),
                                );
                              },
                              child: const Icon(
                                Icons.favorite,
                                color: Colors.pink,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Item deleted!"),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.delete,
                      color: Color(0xffffb100),
                      size: 24,
                    ),
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
