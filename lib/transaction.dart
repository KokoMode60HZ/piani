import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),
      appBar: AppBar(
        elevation: 4,
        backgroundColor: const Color(0xffff9800),
        title: const Text(
          "Confirm Transaction",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color(0xffffffff),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header Section
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xffff9800),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const[
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Text(
                    "Are you sure you want to confirm this transaction?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Transaction Details Section
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const[
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.account_balance_wallet, color: Color(0xffff9800), size: 24),
                        const SizedBox(width: 16),
                        const Text(
                          "Amount",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff424141),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "\$9500.00",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20, color: Color(0xffe0e0e0)),
                    Row(
                      children: [
                        const Icon(Icons.credit_card, color: Color(0xffff9800), size: 24),
                        const SizedBox(width: 16),
                        const Text(
                          "Payment Method",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff424141),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Credit Card",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                    const Divider(height: 20, color: Color(0xffe0e0e0)),
                    Row(
                      children: [
                        const Icon(Icons.date_range, color: Color(0xffff9800), size: 24),
                        const SizedBox(width: 16),
                        const Text(
                          "Date",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff424141),
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Jan 16, 2025",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Confirm Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffff9800),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle transaction confirmation logic
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: const Text("Transaction Confirmed"),
                      content: const Text("Your transaction has been successfully completed."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close dialog
                          },
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  "Confirm Transaction",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
