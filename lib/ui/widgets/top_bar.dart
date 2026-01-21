import 'package:credpal_shopping/ui/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h),
      color: const Color(0xFFD0DAFF), // background colo,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomTextWidget(
                      text: 'Pay later',
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                    Row(
                      children: [
                        const CustomTextWidget(
                          text: 'everywhere ',
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                        ),
                        // SizedBox(width: 6.w),
                        Container(
                          padding: EdgeInsets.all(6.r),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: const CustomTextWidget(
                            text: '!',
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF274FED),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomTextWidget(
                      text: 'Shopping limit: ₦0',
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      bottomPadding: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 14.w),
                      decoration: BoxDecoration(
                        color: const Color(0xFF274FED),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        'Activate Credit',
                        style: GoogleFonts.poppins(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 14.h,),
          ],
        ),
      ),
    );
  }
}
