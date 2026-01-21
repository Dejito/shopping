import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/merchants_list.dart';
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
                    color: const Color(0xFF68D391), // Emerald green
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        // Merchant Name
        Text(
          merchant.brandName,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style:  GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            // color: const Color(0xFF1A1C1E),
          ),
        ),
      ],
    );
  }
}