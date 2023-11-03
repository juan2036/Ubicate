import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalizacionRecord extends FirestoreRecord {
  LocalizacionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Ubicacion" field.
  String? _ubicacion;
  String get ubicacion => _ubicacion ?? '';
  bool hasUbicacion() => _ubicacion != null;

  // "Coordenadas" field.
  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  bool hasCoordenadas() => _coordenadas != null;

  void _initializeFields() {
    _ubicacion = snapshotData['Ubicacion'] as String?;
    _coordenadas = snapshotData['Coordenadas'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Localizacion');

  static Stream<LocalizacionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalizacionRecord.fromSnapshot(s));

  static Future<LocalizacionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocalizacionRecord.fromSnapshot(s));

  static LocalizacionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocalizacionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalizacionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalizacionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalizacionRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLocalizacionRecordData({
  String? ubicacion,
  LatLng? coordenadas,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Ubicacion': ubicacion,
      'Coordenadas': coordenadas,
    }.withoutNulls,
  );

  return firestoreData;
}
