import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/models/merchant_model.dart';

class MerchantItem extends StatelessWidget {
  
  final MerchantModel merchant;

  const MerchantItem({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                color: merchant.brandColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: Center(
                child: Image.asset(
                  merchant.brandLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // The Green Online Dot
            if (merchant.isOnline)
              Positioned(
                top: 2,
                right: 2,
                child: Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: const Color(0xFF24C78B),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          merchant.brandName,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:  GoogleFonts.montserrat(
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}