import 'package:doctor_appoinment_app/core/app_export.dart';
import 'package:flutter/material.dart';

class TimeSlotListWidget extends StatelessWidget {
  const TimeSlotListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.h,
      child: Column(
        children: [
          Container(
              height: 50.h,
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 6.h),
              decoration: BoxDecoration(
                color: theme.colorScheme.onErrorContainer,
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Center(
                  child: Text(
                    "10.00 AM",
                    // overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.headlineMedium,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
