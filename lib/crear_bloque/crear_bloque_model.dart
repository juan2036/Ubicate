import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearBloqueModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for Ed_NombreBloque widget.
  TextEditingController? edNombreBloqueController;
  String? Function(BuildContext, String?)? edNombreBloqueControllerValidator;
  // State field(s) for Ed_InfoBloque widget.
  TextEditingController? edInfoBloqueController;
  String? Function(BuildContext, String?)? edInfoBloqueControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    edNombreBloqueController?.dispose();
    edInfoBloqueController?.dispose();
  }

  /// Additional helper methods are added here.

}
