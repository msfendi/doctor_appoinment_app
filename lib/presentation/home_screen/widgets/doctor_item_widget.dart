import 'package:flutter/material.dart';
import '../../../core/app_export.dart';

class DoctorItemWidget extends StatelessWidget {
  const DoctorItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 6.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadiusStyle.roundedBorder8,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.11.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray60014,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(
              0,
              4,
            ),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // CustomImageView(
                //   imagePath: ImageConstant.imgSignal,
                //   height: 16.h,
                //   width: 16.h,
                // ),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "4.7",
                    style: CustomTextStyles.labelLargeAmber500SemiBold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse88,
            height: 70.h,
            width: 70.h,
            radius: BorderRadius.circular(
              34.h,
            ),
          ),
          SizedBox(height: 6.h),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Dr. Marcus Horizon",
                    style:
                        CustomTextStyles.titleMedium16.copyWith(fontSize: 16),
                  ),
                ),
                SizedBox(height: 4.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Chardiologist",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 16.h,
                    width: 16.h,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.h,
                        top: 2.h,
                      ),
                      child: Text(
                        "Connect",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
