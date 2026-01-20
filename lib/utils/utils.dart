
//design height(responsiveness)
import 'package:flutter/cupertino.dart';

double logicalHeight(BuildContext context) {
  final view = View.of(context);
  return view.physicalSize.height / view.devicePixelRatio;
}

///design width(responsiveness)
double logicalWidth(BuildContext context) {
  final view = View.of(context);
  return view.physicalSize.width / view.devicePixelRatio;
}
