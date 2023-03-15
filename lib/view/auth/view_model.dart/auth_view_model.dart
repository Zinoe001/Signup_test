import 'package:flutter/material.dart';
import 'package:sign_up_app/core/navigation/routes_name.dart';
import 'package:sign_up_app/core/services/auth_servise.dart';
import 'package:sign_up_app/core/navigation/navigation_service.dart';

class AuthViewModel extends ChangeNotifier {
  AuthService service = AuthService();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController pinController = TextEditingController();
  late bool isbusy = false;

  Future<void> signUp() async {
    // check if all inputs are correct
    // if no stop function
    if (formKey.currentState!.validate()) {
      // set state to busy
      isbusy = true;
      notifyListeners();

      /// calling server to send verification mail
      bool result = await service.signUp(
          email: emailController.text,
          password: passwordController.text,
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          phone: phoneController.text);

      /// go to verification view if communication with server was successful
      if (result) {
        //to verification
        NavigationService.instance.navigateTo(HomeViewRoute);
      }
      // chage state from busy to idle
      notifyListeners();
    }
  }
}
