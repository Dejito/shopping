import 'package:credpal_shopping/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {

  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CustomTextWidget(
              text: 'Pay Later \n everywhere',
            ),
            Container(
              color: Colors.white,
              child: const CustomTextWidget(
                text: '!',
                color: Color(0xFF274FED),
              ),
            )
          ],
        ),
        Column(
          children: [
            const CustomTextWidget(
              text: 'Shopping limit: ₦0',
              bottomPadding: 6,
            ),
            Container(
              padding: EdgeInsets.all(12.r),
              color: const Color(0xFF274FED),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                'Activate Credit',
                style:
                GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
