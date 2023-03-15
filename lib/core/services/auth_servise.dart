// import 'package:auth_app/core/services/storage_services.dart';

import 'package:sign_up_app/model/user_model.dart';
import 'package:sign_up_app/core/services/network_service.dart';
import 'package:sign_up_app/widgets/auth_flushbar.dart';
/// auth services where the post request is been created
class AuthService {
  NetWorkServices services = NetWorkServices();
  AuthFlushbar flushbar = AuthFlushbar();
  // UserModel? _currentUser;
  // UserModel? get currentUser => _currentUser;
  // late String _userEmail;
  // late String _otp;

// /// used to save the email of user locally
//   Future<String> _getSavedEmail() async {
//     final saveEmail = await Storage.getEmail();
//     _userEmail = saveEmail;
//     return _userEmail;
//   }

  Future<bool> signUp({
    required String password,
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
  }) async {
    try {
      // await _getSavedEmail();
      /// creating a post request
      print("calling the api");
      var response = await services.post("/signup", body: {
        "email": email,
        "password": password,
        "phoneNumber": phone,
        "firstname": firstName,
        "lastname": lastName,
        // "pin": _otp,
      });
      print(response);
      /// on successful show a flushbar
      // flushbar.showSuccessful(
      //     title: "Account Created Successfully",
      //     message: "You have successfully created an account with ZeeFlight,"
      //         "proceed to login to enjoy a facinating world of experience");
      // UserModel _user = UserModel.fromJson(response);
      // _saveUserLocally(_user);
      // _currentUser = _user;
      return true;
    } catch (e) {
      print(e);
      
      /// on error show an errorindication
      // flushbar.showError(title: "Error Encountered", message: e.toString());
      return false;
    }
  }
  }