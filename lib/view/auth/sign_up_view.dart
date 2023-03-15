import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_up_app/core/utils/text.dart';
import 'package:sign_up_app/core/utils/validators.dart';
import 'package:sign_up_app/view/auth/components/info_card.dart';
import 'package:sign_up_app/view/auth/view_model.dart/auth_view_model.dart';
import 'package:sign_up_app/widgets/app_button.dart';
import 'package:sign_up_app/widgets/loading_page.dart';

final _viewModelProvider =
    ChangeNotifierProvider.autoDispose((ref) => AuthViewModel());

class SignUpView extends ConsumerWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var model = ref.watch(_viewModelProvider);
    return Scaffold(
      body: LoadingPage(
        isBusy: model.isbusy,
        child: SafeArea(
          child: Form(
            key: model.formKey,
            child: GestureDetector(
              onTap: FocusScope.of(context).unfocus,
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
                  Center(child: AppText.heading1("Sign Up")),
                  const SizedBox(height: 100),
                  InfoCard(
                    title: "First name",
                    keyboardType: TextInputType.name,
                    controller: model.firstNameController,
                    validator:(v)=> Validators.name(v),
                  ),
                  const SizedBox(height: 10),
                   InfoCard(
                    title: "Last name",
                    controller: model.lastNameController,
                    keyboardType:TextInputType.name ,
                    validator:(v)=> Validators.name(v),
                  ),
                  const SizedBox(height: 10),
                   InfoCard(
                    title: "Email",
                    controller: model.emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator:(v)=> Validators.email(v),
                  ),
                  const SizedBox(height: 10),
                  InfoCard(
                    title: "Password",
                    controller: model.passwordController,
                    keyboardType: TextInputType.emailAddress,
                    validator:(v)=> Validators.password(v),
                    // obscureText: true,
                  ),
                  const SizedBox(height: 10),
                   InfoCard(
                    title: "Phone Number",
                    controller: model.phoneController,
                    keyboardType:TextInputType.phone,
                    validator:(v)=> Validators.phoneNumber(v),
                  ),
                  const SizedBox(height: 50),
                  Center(
                    child: AppButton(
                      onTap: () => model.signUp(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
