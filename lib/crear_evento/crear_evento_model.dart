import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearEventoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Ed_NombreEvento widget.
  TextEditingController? edNombreEventoController;
  String? Function(BuildContext, String?)? edNombreEventoControllerValidator;
  // State field(s) for Ed_Sitio_Evento widget.
  TextEditingController? edSitioEventoController;
  String? Function(BuildContext, String?)? edSitioEventoControllerValidator;
  // State field(s) for Ed_fecha_Evento widget.
  TextEditingController? edFechaEventoController;
  String? Function(BuildContext, String?)? edFechaEventoControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    edNombreEventoController?.dispose();
    edSitioEventoController?.dispose();
    edFechaEventoController?.dispose();
    textController4?.dispose();
  }

  /// Additional helper methods are added here.

}
