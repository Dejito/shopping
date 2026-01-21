import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {

  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F3FE),
                borderRadius: BorderRadius.circular(25),
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
          const SizedBox(width: 20),
          // Scan Button
          GestureDetector(
            onTap: (){},
            child: Container(
              height: 45.h,
              width: 45.w,
              decoration: BoxDecoration(
                color: const Color(0xFFF1F3FE),
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