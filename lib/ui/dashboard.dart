import 'package:credpal_shopping/ui/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            // padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                TopBar()
              ],
            ),
          ),
        )
      ),
    );
  }
}
