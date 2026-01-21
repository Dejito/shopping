import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {

  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: Row(
        children: [
          // Search Input field
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                // color: const Color(0xFFF5F6FA), // Subtle grey background
                borderRadius: BorderRadius.circular(25), // Fully rounded
              ),
              child: TextField(
                onChanged: (_){},
                decoration: const InputDecoration(
                  hintText: 'Search for products or stores',
                  hintStyle: TextStyle(
                    color: Color(0xFF9BA3B5),
                    fontSize: 14,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Color(0xFF9BA3B5),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          // Scan Button
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F6FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.qr_code_scanner,
                color: Color(0xFF4A4A4A),
              ),
            ),
          ),
        ],
      ),
    );
  }
}