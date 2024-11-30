import 'package:doctor_appoinment_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:doctor_appoinment_app/widgets/app_bar/custom_app_bar.dart';
import 'package:doctor_appoinment_app/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import 'widgets/datelist_item_widget.dart';
import 'widgets/hourlist_item_widget.dart';

class AppoinmentScreen extends StatelessWidget {
  const AppoinmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: _buildAppBar(context),
            ),
            SizedBox(
              height: 15.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDoctorInfo(context),
                SizedBox(
                  height: 40.h,
                ),
                _buildDoctorDetail(context),
                SizedBox(
                  height: 40.h,
                ),
                _buildWorkingHours(context),
                SizedBox(
                  height: 25.h,
                ),
                _buildWorkingDate(context),
                SizedBox(
                  height: 25.h,
                ),
                _buildBookAnAppoinmentButton(context),
                SizedBox(
                  height: 25.h,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70.h,
      centerTitle: true,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        height: 60.h,
        width: 60.h,
        margin: EdgeInsets.only(
          top: 36.h,
          left: 23.h,
          bottom: 36.h,
        ),
      ),
      title: Text(
        'Appointment',
        style: CustomTextStyles.titleLargeSemiBold
            .copyWith(color: const Color(0xFF0B8FAC)),
      ),
    );
  }

  Widget _buildDoctorInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.doctorProfile,
            height: 100.h,
            border: Border.all(width: 1),
            radius: BorderRadius.circular(10),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr.Upul',
                      style: theme.textTheme.titleMedium,
                    ),
                    CustomIconButton(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          color: theme.colorScheme.onErrorContainer),
                      child: const Icon(
                        Icons.message,
                        size: 15,
                      ),
                    ),
                    CustomIconButton(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          color: theme.colorScheme.onErrorContainer),
                      child: const Icon(
                        Icons.message,
                        size: 15,
                      ),
                    ),
                    CustomIconButton(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                          color: theme.colorScheme.onErrorContainer),
                      child: const Icon(
                        Icons.message,
                        size: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Chardiologist',
                  style: theme.textTheme.bodyMedium!
                      .copyWith(color: const Color(0xFF7BC1B7)),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Payment',
                      style: theme.textTheme.displayLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '120000',
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: const Color(0xFF7BC1B7),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildDoctorDetail(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Details', style: CustomTextStyles.titleMedium16),
          SizedBox(height: 15.h),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum commodo mi vitae commodo vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget justo sit amet mauris pretium posuere vehicula a ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum commodo mi vitae commodo vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse eget justo sit amet mauris pretium posuere vehicula a ipsum.',
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }

  Widget _buildWorkingHours(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Working Hours",
                  style: CustomTextStyles.titleMedium16,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.h),
          _gridWorkingHours(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _gridWorkingHours(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0.h),
      width: double.maxFinite,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          // spacing: 6.h,
          children: List.generate(
            4,
            (index) {
              return const HourlistItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWorkingDate(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Working Date",
                  style: CustomTextStyles.titleMedium16,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "See all",
                    style: CustomTextStyles.titleSmallPrimary_1,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15.h),
          _gridWorkingDate(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _gridWorkingDate(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0.h),
      width: double.maxFinite,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          // spacing: 6.h,
          children: List.generate(
            4,
            (index) {
              return const DatelistItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBookAnAppoinmentButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: CustomElevatedButton(
        onPressed: () {
          // if (_formKey.currentState!.validate()) {
          //   // Navigator.pushNamed(context, RouteNameConstant.homeScreen);
          // }
        },
        text: "Book an Appointment",
        buttonTextStyle: CustomTextStyles.titleMediumMedium
            .copyWith(color: theme.primaryColor),
        buttonStyle: CustomButtonStyles.fillBlue,
      ),
    );
  }
}
