import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'custom_image_view.dart';

enum BottomBarEnum { Home, Message, Calendargray500, Lockgray500 }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMessage,
      activeIcon: ImageConstant.imgMessage,
      type: BottomBarEnum.Message,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCalendarGray500,
      activeIcon: ImageConstant.imgCalendarGray500,
      type: BottomBarEnum.Calendargray500,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLockGray500,
      activeIcon: ImageConstant.imgLockGray500,
      type: BottomBarEnum.Lockgray500,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              imagePath: bottomMenuList[index].icon,
              height: 32.h,
              width: 32.h,
              color: const Color(0XFF90979E),
            ),
            activeIcon: CustomImageView(
              imagePath: bottomMenuList[index].activeIcon,
              height: 32.h,
              width: 32.h,
              color: const Color(0XFF227DDE),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  String icon;
  String activeIcon;
  BottomBarEnum type;

  BottomMenuModel(
      {required this.icon, required this.activeIcon, required this.type});
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
