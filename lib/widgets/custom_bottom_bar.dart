import 'package:flutter/material.dart';
import '../core/app_export.dart';

enum BottomBarEnum { Pinjaman }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({super.key, this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

// ignore_for_file: must_be_immutable
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgUser,
      activeIcon: ImageConstant.imgUser,
      title: "lbl_pinjaman".tr,
      type: BottomBarEnum.Pinjaman,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgThumbsUpIndigo200,
      activeIcon: ImageConstant.imgThumbsUpIndigo200,
      title: "lbl_pinjaman".tr,
      type: BottomBarEnum.Pinjaman,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavPinjaman,
      activeIcon: ImageConstant.imgNavPinjaman,
      title: "lbl_pinjaman".tr,
      type: BottomBarEnum.Pinjaman,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgLock,
      activeIcon: ImageConstant.imgLock,
      title: "lbl_pinjaman".tr,
      type: BottomBarEnum.Pinjaman,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0XFFF5F9FE),
      ),
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
              height: 24.h,
              width: 26.h,
              color: const Color(0XFF9DB2CE),
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.h,
                  width: 26.h,
                  color: const Color(0XFF386BF6),
                ),
                SizedBox(height: 6.h),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: CustomTextStyles.labelLargeSecondaryContainer.copyWith(
                    color: const Color(0XFF386BF6),
                  ),
                )
              ],
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
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;
  String activeIcon;
  String? title;
  BottomBarEnum type;
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
