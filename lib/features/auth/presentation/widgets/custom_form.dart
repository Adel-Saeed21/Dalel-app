import 'package:dalel/core/functions/spacing.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/logic/auth_cubit.dart';
import 'package:dalel/features/auth/logic/auth_state.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_And_condition.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              CustomTextField(
                labelText: AppStrings.fristName,
                labelTextStyle: AppTextStyle.pacifico500style18Grey,
                borderRadius: 16,
                onChanged: (firstName) {
                  BlocProvider.of<AuthCubit>(context).firstName = firstName;
                },
              ),
              CustomTextField(
                labelText: AppStrings.lastName,
                onChanged: (lastName) {
                  BlocProvider.of<AuthCubit>(context).lastName = lastName;
                },
                labelTextStyle: AppTextStyle.pacifico500style18Grey,
                borderRadius: 16,
              ),
              CustomTextField(
                onChanged: (email) => {
                  BlocProvider.of<AuthCubit>(context).emailAddress = email
                },
                labelText: AppStrings.emailAddress,
                labelTextStyle: AppTextStyle.pacifico500style18Grey,
                borderRadius: 16,
              ),
              CustomTextField(
                onChanged: (password) {
                  BlocProvider.of<AuthCubit>(context).password = password;
                }
                ,
                labelText: AppStrings.password,
                labelTextStyle: AppTextStyle.pacifico500style18Grey,
                borderRadius: 16,
              ),
              const TermsAndConditoins(),
              verticalSpace(88.h),
              CustomButton(
                text: "Register",
                onPressed: () {
                  BlocProvider.of<AuthCubit>(
                    context,
                  ).singUpWithEmailAndPassword();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
