import 'package:flutter/material.dart';
import 'package:onlinelearning/constants/app_colors.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.padding,
  });
  final Icon icon;
  final Color? backgroundColor;
  final double? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 13.0),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.borderColor,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: icon,
    );
  }
}
