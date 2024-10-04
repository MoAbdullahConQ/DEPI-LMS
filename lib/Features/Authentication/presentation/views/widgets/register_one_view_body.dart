import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/drob_down_menu.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/logo_image.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterOneViewBody extends StatelessWidget {
  const RegisterOneViewBody({super.key});

  final List<DropdownMenuEntry> genderList = const [
    DropdownMenuEntry(value: 'Male', label: "Male"),
    DropdownMenuEntry(value: 'Female', label: "Female"),
  ];
  final List<DropdownMenuEntry> governmentList = const [
    DropdownMenuEntry(value: 'Male', label: "Male"),
    DropdownMenuEntry(value: 'Female', label: "Female"),
    DropdownMenuEntry(value: 'Female', label: "Female"),
  ];
  final List<DropdownMenuEntry> cityList = const [
    DropdownMenuEntry(value: 'Male', label: "Male"),
    DropdownMenuEntry(value: 'Female', label: "Female"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14, top: 10),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const LogoImage(),
                      const SizedBox(height: 20),
                      Text(
                        'Register',
                        style: Styles.textStyle20,
                      ),
                      const SizedBox(height: 14),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'Full name in Arabic',
                        labelStyle:
                            Styles.textStyle15.copyWith(color: kGreen1Color),
                        prefixIcon: const Icon(
                          Icons.account_circle_outlined,
                          size: 33,
                          color: kGreen1Color,
                        ),
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'Full name in English',
                        labelStyle:
                            Styles.textStyle15.copyWith(color: kGreen1Color),
                        prefixIcon: const Icon(
                          Icons.account_circle_outlined,
                          size: 33,
                          color: kGreen1Color,
                        ),
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'National ID',
                        labelStyle:
                            Styles.textStyle15.copyWith(color: kGreen1Color),
                        prefixIcon: const Icon(
                          Icons.contact_mail_outlined,
                          size: 33,
                          color: kGreen1Color,
                        ),
                      ),
                      const SizedBox(height: 13),
                      CustomTextFormField(
                        onChanged: (p0) {},
                        labelText: 'Date of birth',
                        labelStyle:
                            Styles.textStyle15.copyWith(color: kGreen1Color),
                        prefixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          size: 33,
                          color: kGreen1Color,
                        ),
                        suffixIcon: const Icon(
                          Icons.calendar_today_outlined,
                          color: kGreen1Color,
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        DropDownMenu(
                          hintText: 'Gender',
                          width: 140,
                          drobDownList: genderList,
                        ),
                        const SizedBox(width: 10),
                        DropDownMenu(
                          hintText: 'City',
                          width: 110,
                          drobDownList: cityList,
                        ),
                        const SizedBox(width: 10),
                        DropDownMenu(
                          hintText: 'Government',
                          width: 190,
                          drobDownList: governmentList,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
                    child: CustomButton(
                      onTap: () {},
                      text: 'Continue',
                      backgroundColor: kButton,
                      textStyle:
                          Styles.textStyle25.copyWith(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 9,
            top: 10,
            child: IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back)),
          ),
        ]),
      ),
    );
  }
}
