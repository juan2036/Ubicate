import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AuthenticateModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailAddress_Login widget.
  TextEditingController? emailAddressLoginController;
  String? Function(BuildContext, String?)? emailAddressLoginControllerValidator;
  // State field(s) for password_Login widget.
  TextEditingController? passwordLoginController;
  late bool passwordLoginVisibility;
  String? Function(BuildContext, String?)? passwordLoginControllerValidator;
  // State field(s) for emailAddress_register widget.
  TextEditingController? emailAddressRegisterController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterControllerValidator;
  // State field(s) for password_register widget.
  TextEditingController? passwordRegisterController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)? passwordRegisterControllerValidator;
  // State field(s) for passwordConfirm_Register widget.
  TextEditingController? passwordConfirmRegisterController;
  late bool passwordConfirmRegisterVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmRegisterControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordLoginVisibility = false;
    passwordRegisterVisibility = false;
    passwordConfirmRegisterVisibility = false;
  }

  void dispose() {
    emailAddressLoginController?.dispose();
    passwordLoginController?.dispose();
    emailAddressRegisterController?.dispose();
    passwordRegisterController?.dispose();
    passwordConfirmRegisterController?.dispose();
  }

  /// Additional helper methods are added here.

}
