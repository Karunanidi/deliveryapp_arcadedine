import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxThreeScreen extends StatelessWidget {
  Iphone1415ProMaxThreeScreen({Key? key})
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
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 57.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconLogo,
                      height: 131.adaptSize,
                      width: 131.adaptSize,
                      radius: BorderRadius.circular(
                        25.h,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Text(
                      "Arcade Dine",
                      style: CustomTextStyles.titleLargeOnPrimary,
                    ),
                    SizedBox(height: 43.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "Email",
                      textInputType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 28.v),
                    CustomTextFormField(
                      controller: passwordController,
                      hintText: "Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                    SizedBox(height: 28.v),
                    _buildSignInColumn(context),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 29.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 18.v,
                              bottom: 16.v,
                            ),
                            child: SizedBox(
                              width: 118.h,
                              child: Divider(),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 22.h),
                            child: Text(
                              "or",
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 18.v,
                              bottom: 16.v,
                            ),
                            child: SizedBox(
                              width: 139.h,
                              child: Divider(
                                indent: 21.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 2.v),
                    CustomElevatedButton(
                      text: "Sign In With Google",
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 24.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGoogle1,
                          height: 42.adaptSize,
                          width: 42.adaptSize,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Text(
                            "Not a member? ",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 11.h),
                          child: Text(
                            "Register Now",
                            style: theme.textTheme.titleSmall,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignInColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 143.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Sign In",
            style: theme.textTheme.titleLarge,
          )
        ],
      ),
    );
  }
}
