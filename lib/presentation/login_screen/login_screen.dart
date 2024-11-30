import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outline_button.dart';
import '../../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 30.h,
            ),
            child: Column(
              children: [
                _buildFormSection(context),
                SizedBox(height: 10.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.h),
                      child: Text(
                        "Forgot Password?",
                        style: CustomTextStyles.titleSmallPrimary_1,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                _buildLoginButton(context),
                SizedBox(height: 24.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 56.h),
                  child: Row(
                    children: [
                      Text(
                        "Don’t have an account?",
                        style: CustomTextStyles.bodyMediumOnPrimary,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(left: 4.h),
                          child: Text(
                            "Sign Up",
                            style: CustomTextStyles.titleSmallPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 34.h),
                _buildOrDivider(context),
                SizedBox(height: 28.h),
                _buildSocialSignIn(context),
                SizedBox(height: 4.h)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHome,
        margin: EdgeInsets.only(
          left: 32.h,
          top: 8.h,
          bottom: 16.h,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Login",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Enter your email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 22.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 56.h,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 16.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: CustomTextFormField(
        controller: passwordController,
        hintText: "Enter your password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
          margin: EdgeInsets.fromLTRB(24.h, 16.h, 16.h, 16.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 24.h,
            width: 24.h,
            fit: BoxFit.contain,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 56.h,
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 16.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFormSection(BuildContext context) {
    return Column(
      children: [
        _buildEmail(context),
        SizedBox(height: 16.h),
        _buildPassword(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Navigator.pushNamed(context, RouteNameConstant.homeScreen);
        }
      },
      text: "Login",
      buttonStyle: CustomButtonStyles.fillBlue,
    );
  }

  /// Section Widget
  Widget _buildOrDivider(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.gray100,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Text(
            "Or",
            style: CustomTextStyles.titleSmallBlack900,
          ),
        ),
        Expanded(
          child: Container(
            height: 1.h,
            color: appTheme.gray500,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSocialSignIn(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomOutlinedButton(
          onPressed: () {},
          text: "Google",
          buttonStyle: CustomButtonStyles.fillGray,
          // icon: ImageConstant.imgIconGoogle,
        ),
        SizedBox(width: 16.h),
        CustomOutlinedButton(
          onPressed: () {},
          text: "Facebook",
          buttonStyle: CustomButtonStyles.fillGray,
          // icon: ImageConstant.imgIconFacebook,
        ),
      ],
    );
  }
}
