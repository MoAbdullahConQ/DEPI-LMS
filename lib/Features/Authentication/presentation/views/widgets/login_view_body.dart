import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_lms/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_lms/constant.dart';
import 'package:depi_lms/core/utils/assets.dart';
import 'package:depi_lms/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.white,
          Colors.white.withOpacity(.10),
          const Color(0xff87D5BE).withOpacity(.5),
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AssetsData.logo,
                  width: 100,
                ),
                Image.asset(AssetsData.itidaLogo)
              ],
            ),
            const SizedBox(height: 70),
            Text(
              'Welcome to DEPI',
              style: Styles.textStyle32,
            ),
            const SizedBox(height: 20),
            const Text(
              'Login',
              style: Styles.textStyle25,
            ),
            const SizedBox(height: 30),
            CustomTextFormField(
              onChanged: (v) {},
              prefixIcon: const Icon(
                Icons.email_outlined,
                color: kLogin,
              ),
              hintText: 'Email',
              hintStyle:
                  const TextStyle(color: kLogin, fontWeight: FontWeight.w200),
            ),
            const SizedBox(height: 18),
            CustomTextFormField(
              onChanged: (p0) {
                // password = p0;
              },
              prefixIcon: const Icon(
                Icons.lock_outline,
                color: kLogin,
              ),
              obscure: true,
              hintText: 'Password',
              hintStyle:
                  const TextStyle(color: kLogin, fontWeight: FontWeight.w200),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // GoRouter.of(context).push(AppRouter.emailForgetPass);
                  },
                  child: Text(
                    'Forget Password ..?',
                    style: Styles.textStyle18
                        .copyWith(color: const Color(0xff555555)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                GoRouter.of(context).push('/');
              },
              text: 'Login',
              backgroundColor: kButton,
              textStyle: Styles.textStyle25.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t Have an account ?',
                  style: Styles.textStyle14
                      .copyWith(color: const Color(0xff555555)),
                ),
                TextButton(
                  style: const ButtonStyle(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(0))),
                  onPressed: () {
                    // GoRouter.of(context).push(AppRouter.register);
                  },
                  child: Text('   Register',
                      style: Styles.textStyle14
                          .copyWith(color: const Color(0xff555555))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
