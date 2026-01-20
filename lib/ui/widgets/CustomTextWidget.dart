import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final double topPadding;
  final double bottomPadding;
  final double startPadding;
  final double endPadding;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final FontStyle fontStyle;
  final TextOverflow overflow;
  final int? maxLines;

  const CustomTextWidget({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 14,
    this.topPadding = 0.0,
    this.bottomPadding = 0.0,
    this.startPadding = 0.0,
    this.endPadding = 0.0,
    this.fontWeight = FontWeight.w400,
    this.textAlign = TextAlign.justify,
    this.fontStyle = FontStyle.normal,
    this.overflow = TextOverflow.fade,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding.h,
        bottom: bottomPadding.h,
        left: startPadding.w,
        right: endPadding.w,
      ),
      child: Text(
        text,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: textAlign,
        style: GoogleFonts.montserrat(
          fontSize: fontSize.sp,
          fontWeight: fontWeight,
          color: color,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}
