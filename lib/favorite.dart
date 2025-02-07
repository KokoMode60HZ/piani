///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/
library;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xffebebeb),
    appBar: AppBar(
      elevation: 4,
      centerTitle: false,
      automaticallyImplyLeading: false, // menonaktifkan leading default
      backgroundColor: const Color(0xffff9800),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      title: const Text(
        "Favorite                        ❤",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 18,
          color: Color(0xff000000),
        ),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).pop(); // Navigasi kembali
        },
        child: const Icon(
          Icons.arrow_back,
          color: Color(0xffffffff),
          size: 24,
        ),
      ),
    ),
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.all(8),
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Card(
            margin: const EdgeInsets.all(0),
            color: const Color(0xffffffff),
            shadowColor: const Color(0xff000000),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0)),
                  child:

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
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
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            "",
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 12,
                              color: Color(0xff7a7a7a),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            "\$11000",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "grand piano paling ringkas dari Yamaha, merupakan pilihan populer untuk lokasi dengan ruang yang relatif terbatas, menghasilkan nada resonansi penuh yang sebanding dengan banyak model yang jauh lebih besar.",
                            textAlign: TextAlign.start,
                            maxLines: 11,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 11,
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
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffff0000),
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            color: const Color(0xffffffff),
            shadowColor: const Color(0xff000000),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0)),
                  child:

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
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
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            "\$11000",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "grand piano paling ringkas dari Yamaha, merupakan pilihan populer untuk lokasi dengan ruang yang relatif terbatas, menghasilkan nada resonansi penuh yang sebanding dengan banyak model yang jauh lebih besar.",
                            textAlign: TextAlign.start,
                            maxLines: 12,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 11,
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
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffff0000),
                    size: 24,
                  ),
                ),
              ],
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
            color: const Color(0xffffffff),
            shadowColor: const Color(0xff000000),
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0)),
                  child:

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
                    image: AssetImage("assets/images/download.jpg"),
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Text(
                          "GB1K",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            "11000",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                          child: Text(
                            "",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 11,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        const Text(
                          "grand piano paling ringkas dari Yamaha, merupakan pilihan populer untuk lokasi dengan ruang yang relatif terbatas, menghasilkan nada resonansi penuh yang sebanding dengan banyak model yang jauh lebih besar.",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 11,
                            color: Color(0xff000000),
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
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Icon(
                    Icons.favorite,
                    color: Color(0xffff0000),
                    size: 24,
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
