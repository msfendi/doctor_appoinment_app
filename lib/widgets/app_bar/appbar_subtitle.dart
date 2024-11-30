import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class AppbarSubtitle extends StatelessWidget {
  AppbarSubtitle({Key? key, required this.text, this.onTap, this.margin})
      : super(
          key: key,
        );

  final String text;

  final Function? onTap;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: GestureDetector(
        onTap: () {
          onTap?.call();
        },
        child: SizedBox(
          width: 108.h,
          child: Text(
            text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.titleLargeSemiBold.copyWith(
              color: theme.colorScheme.onPrimary,
              height: 1.50,
            ),
          ),
        ),
      ),
    );
  }
}
