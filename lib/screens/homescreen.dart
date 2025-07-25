import 'package:flutter/material.dart';
import 'package:onlinelearning/constants/app_colors.dart';
import 'package:onlinelearning/screens/widgets/container_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Color(0xFF1E1E1E), // dark background
                    shape: BoxShape.circle,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Top-left segment
                      Positioned(
                        top: 8,
                        left: 8,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      // Top-right segment
                      Positioned(
                        top: 8,
                        right: 8,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.yellow,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      // Bottom-left segment
                      Positioned(
                        bottom: 8,
                        left: 8,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.pinkAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                      // Bottom-right segment
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Row(
                  children: [
                    ContainerIcon(
                      icon: Icon(
                        Icons.calendar_month,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(width: 3.0),
                    ContainerIcon(
                      icon: Icon(
                        Icons.notifications,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/myprof.jpg'),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text('Choose your', style: TextStyle()),
                Text('course'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
