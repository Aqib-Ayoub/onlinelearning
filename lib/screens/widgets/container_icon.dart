import 'package:flutter/material.dart';
import 'package:onlinelearning/constants/app_colors.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({super.key, required this.icon});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: AppColors.borderColor,
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: icon,
    );
  }
}
