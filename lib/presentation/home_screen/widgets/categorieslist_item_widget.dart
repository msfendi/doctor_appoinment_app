import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class CategorieslistItemWidget extends StatelessWidget {
  const CategorieslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76.h,
      child: Column(
        children: [
          Container(
            height: 56.h,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer,
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconAmbulance,
                  height: 32.h,
                  width: 32.h,
                )
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            "Ambulance",
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
