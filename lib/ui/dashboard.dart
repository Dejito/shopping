import 'package:credpal_shopping/ui/widgets/product_items.dart';
import 'package:credpal_shopping/ui/widgets/products_gridview.dart';
import 'package:credpal_shopping/ui/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(

          child: Column(
            children: [
              TopBar(),
              ProductsGridview()
            ],
          ),
        )
      ),
    );
  }
}
