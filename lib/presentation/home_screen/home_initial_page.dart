import 'package:doctor_appoinment_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/appbar_trailling_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/categorieslist_item_widget.dart';
import 'widgets/doctor_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
}

// ignore_for_file: must_be_immutable
class HomeInitialPageState extends State<HomeInitialPage> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: Column(
        children: [
          SizedBox(height: 26.h),
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(14.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      child: CustomSearchView(
                        controller: searchController,
                        hintText: "Search doctor, drugs, articles...",
                        contentPadding:
                            EdgeInsets.fromLTRB(16.h, 10.h, 12.h, 10.h),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _buildCategoriesList(context),
                    SizedBox(height: 14.h),
                    _buildOfferBanner(context),
                    SizedBox(height: 26.h),
                    _buildTopDoctors(context),
                    SizedBox(height: 4.h)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  // Section new appbar
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70.h,
      title: Row(
        children: [
          AppbarLeadingImage(
            imagePath: ImageConstant.imgEllipse88,
            height: 60.h,
            width: 60.h,
            margin: EdgeInsets.only(
              top: 36.h,
              left: 23.h,
              bottom: 36.h,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hi,Welcome Back,",
                  style: theme.textTheme.titleSmall,
                ),
              ),
              Text(
                "John Doe William",
                style: CustomTextStyles.titleMediumErrorContainer,
              ),
            ],
          )
        ],
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUser,
          margin: EdgeInsets.only(
            top: 5.h,
            right: 23.h,
            bottom: 36.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBarOld(BuildContext context) {
  //   return CustomAppBar(
  //     height: 66.h,
  //     title: AppbarSubtitle(
  //       text: "Find your desire \nhealth solution",
  //       margin: EdgeInsets.only(left: 24.h),
  //     ),
  //     actions: [
  //       AppbarTrailingImage(
  //         imagePath: ImageConstant.imgUser,
  //         margin: EdgeInsets.only(
  //           top: 5.h,
  //           right: 23.h,
  //           bottom: 36.h,
  //         ),
  //       )
  //     ],
  //   );
  // }

  /// Section Widget
  Widget _buildCategoriesList(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      width: double.maxFinite,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 4.h),
        scrollDirection: Axis.horizontal,
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 18.h,
          children: List.generate(
            4,
            (index) {
              return const CategorieslistItemWidget();
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOfferBanner(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder8,
        gradient: LinearGradient(
          begin: const Alignment(0.5, 0),
          end: const Alignment(0.5, 1),
          colors: [
            theme.colorScheme.secondaryContainer,
            theme.colorScheme.onError
          ],
        ),
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Early protection for\nyour family health",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumWhiteA700.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                // SizedBox(height: 14.h),
                // CustomElevatedButton(
                //   width: 70.h,
                //   text: "Learn more",
                // )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 130.h,
              width: 138.h,
              margin: EdgeInsets.only(top: 4.h),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: 112.h,
                    width: 112.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        56.h,
                      ),
                      border: Border.all(
                        color: appTheme.whiteA700.withOpacity(0.5),
                        width: 18.h,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.img7xm6,
                    height: 130.h,
                    width: 90.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 10.h),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopDoctors(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Doctor",
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
          SizedBox(height: 16.h),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: ResponsiveGridListBuilder(
              minItemWidth: 1,
              minItemsPerRow: 2,
              maxItemsPerRow: 2,
              horizontalGridSpacing: 16.h,
              verticalGridSpacing: 16.h,
              builder: (context, items) => ListView(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                children: items,
              ),
              gridItems: List.generate(
                4,
                (index) {
                  return const DoctorItemWidget();
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  onTapTxtSeeall(BuildContext context) {}
}
