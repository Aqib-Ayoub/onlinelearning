import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onlinelearning/constants/app_colors.dart';
import 'package:onlinelearning/screens/widgets/container_icon.dart';
import 'package:onlinelearning/screens/widgets/container_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        padding: EdgeInsets.only(top: 35.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text(
              'Choose your \ncourse',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 25,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ContainerIcon(
                    backgroundColor: AppColors.textPrimary,
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      color: AppColors.background,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ContainerText(
                    backgroundColor: AppColors.cardBackground,
                    text: 'Design',
                    nText: '10',
                  ),
                  SizedBox(width: 20.0),
                  ContainerText(
                    backgroundColor: AppColors.cardBackground,
                    text: 'Programming',
                    nText: '24',
                  ),
                  SizedBox(width: 10.0),
                  ContainerText(
                    backgroundColor: AppColors.cardBackground,
                    text: 'Trading',
                    nText: '10',
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              height: 270,
              padding: EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/myprof.png'),
                  alignment: Alignment.bottomRight,
                ),
                color: AppColors.primaryNeon,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),

              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Figma \nDesign app',
                            style: TextStyle(
                              color: AppColors.background,
                              fontSize: 23.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            'Aqib Ayoub',
                            style: TextStyle(
                              color: AppColors.borderColor,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      ContainerIcon(
                        icon: Icon(FontAwesomeIcons.heart),
                        backgroundColor: AppColors.lightGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
