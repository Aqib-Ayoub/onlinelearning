import 'package:flutter/material.dart';
import 'package:onlinelearning/constants/app_colors.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({
    super.key,
    required this.backgroundColor,
    required this.text,
    required this.nText,
  });
  final Color backgroundColor;
  final String text;
  final String nText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(color: AppColors.textPrimary, fontSize: 16),
          ),
          SizedBox(width: 5.0),
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: AppColors.textPrimary,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(nText),
          ),
        ],
      ),
    );
  }
}
