import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    String selectedVariant = 'Black'; // Default variant
    final variants = ['Black', 'White', 'Mahogany'];

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Column(
        children: [
          // Gambar Produk
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.network(
                "assets/images/download.jpg",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.arrow_back, color: Color(0xff212435)),
              ),
            ],
          ),
          // Bagian Scrollable (Deskripsi, Dropdown, dll.)
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "GB1K",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "The shortest* Yamaha grand piano with a length of 151 cm. "
                      "This compact model complements your daily life as only a grand piano could before, "
                      "with its beautiful tone and smooth playing feel. * The most compact design among current Yamaha acoustic grand pianos.",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Delivery Location",
                      style: TextStyle(
                        color: Color(0xffff9800),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.location_on, size: 20),
                        SizedBox(width: 8),
                        Text("Malang, East Java, Indonesia, 65116"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Dropdown untuk varian
                    const Text(
                      "Select Variant",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButton<String>(
                      value: selectedVariant,
                      isExpanded: true,
                      items: variants
                          .map((variant) => DropdownMenuItem<String>(
                                value: variant,
                                child: Text(variant),
                              ))
                          .toList(),
                      onChanged: (value) {
                        if (value != null) {
                          selectedVariant = value;
                          Fluttertoast.showToast(
                            msg: "Variant selected: $value",
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bagian Harga dan Tombol (Tetap di bawah)
          Container(
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  "\$9200.00",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    // Tombol Beli Sekarang
                  // Tombol Beli Sekarang
Expanded(
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Purchase...."),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 101, 101, 101),
        ),
      );
    },
    child: const Text(
      "Buy Now",
      style: TextStyle(
        color: Colors.yellow,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

                    const SizedBox(width: 16),
                    // Tombol Tambah ke Keranjang
                   // Tombol Beli Sekarang
Expanded(
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 255, 187, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16),
    ),
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Product has been added to cart!"),
          duration: Duration(seconds: 2),
           backgroundColor: Colors.green,
        ),
      );
    },
    child: const Text(
      "Add to Cart",
      style: TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
