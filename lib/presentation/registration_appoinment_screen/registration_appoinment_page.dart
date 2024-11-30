// ignore_for_file: must_be_immutable

import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:doctor_appoinment_app/presentation/registration_appoinment_screen/widgets/timeslot_item_widget.dart';
import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';

class RegistrationAppoinmentPage extends StatelessWidget {
  List<DateTime?> _singleDatePickerValueWithDefaultValue = [
    DateTime.now().add(const Duration(days: 1)),
  ];

  final config = CalendarDatePicker2Config(
      selectedDayHighlightColor: const Color(0xFF0B8FAC),
      weekdayLabelTextStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      firstDayOfWeek: 1,
      animateToDisplayedMonthDate: true,
      controlsTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      dayTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      disabledDayTextStyle: const TextStyle(
        color: Colors.grey,
      ),
      selectedDayTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
      centerAlignModePicker: true,
      useAbbrLabelForMonthModePicker: false,
      hideScrollViewTopHeader: false);

  RegistrationAppoinmentPage({super.key});

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDateSchedule(context),
                SizedBox(
                  height: 25.h,
                ),
                _buildWorkingDate(context),
                SizedBox(
                  height: 30.h,
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
        'Select date and time',
        style: CustomTextStyles.titleLargeSemiBold
            .copyWith(color: const Color(0xFF0B8FAC)),
      ),
    );
  }

  Widget _buildDateSchedule(BuildContext context) {
    return CalendarDatePicker2(
      config: config,
      displayedMonthDate: _singleDatePickerValueWithDefaultValue.first,
      value: _singleDatePickerValueWithDefaultValue,
      onValueChanged: (dates) => _singleDatePickerValueWithDefaultValue = dates,
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
                  "Available Time Slot",
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
          _setTimeSlotAppointment(context)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _setTimeSlotAppointment(BuildContext context) {
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
              return const TimeSlotListWidget();
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
