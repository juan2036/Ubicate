import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreaComunRecord extends FirestoreRecord {
  AreaComunRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre_Area" field.
  String? _nombreArea;
  String get nombreArea => _nombreArea ?? '';
  bool hasNombreArea() => _nombreArea != null;

  // "Informacion_Area" field.
  String? _informacionArea;
  String get informacionArea => _informacionArea ?? '';
  bool hasInformacionArea() => _informacionArea != null;

  // "Imagen_Area" field.
  String? _imagenArea;
  String get imagenArea => _imagenArea ?? '';
  bool hasImagenArea() => _imagenArea != null;

  void _initializeFields() {
    _nombreArea = snapshotData['Nombre_Area'] as String?;
    _informacionArea = snapshotData['Informacion_Area'] as String?;
    _imagenArea = snapshotData['Imagen_Area'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Area_Comun');

  static Stream<AreaComunRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AreaComunRecord.fromSnapshot(s));

  static Future<AreaComunRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AreaComunRecord.fromSnapshot(s));

  static AreaComunRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AreaComunRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AreaComunRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AreaComunRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AreaComunRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createAreaComunRecordData({
  String? nombreArea,
  String? informacionArea,
  String? imagenArea,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Area': nombreArea,
      'Informacion_Area': informacionArea,
      'Imagen_Area': imagenArea,
    }.withoutNulls,
  );

  return firestoreData;
}
