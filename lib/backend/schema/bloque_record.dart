import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BloqueRecord extends FirestoreRecord {
  BloqueRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre_Bloque" field.
  String? _nombreBloque;
  String get nombreBloque => _nombreBloque ?? '';
  bool hasNombreBloque() => _nombreBloque != null;

  // "Informacion_Bloque" field.
  String? _informacionBloque;
  String get informacionBloque => _informacionBloque ?? '';
  bool hasInformacionBloque() => _informacionBloque != null;

  // "Imagen_Bloque" field.
  String? _imagenBloque;
  String get imagenBloque => _imagenBloque ?? '';
  bool hasImagenBloque() => _imagenBloque != null;

  void _initializeFields() {
    _nombreBloque = snapshotData['Nombre_Bloque'] as String?;
    _informacionBloque = snapshotData['Informacion_Bloque'] as String?;
    _imagenBloque = snapshotData['Imagen_Bloque'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Bloque');

  static Stream<BloqueRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloqueRecord.fromSnapshot(s));

  static Future<BloqueRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloqueRecord.fromSnapshot(s));

  static BloqueRecord fromSnapshot(DocumentSnapshot snapshot) => BloqueRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloqueRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloqueRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloqueRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createBloqueRecordData({
  String? nombreBloque,
  String? informacionBloque,
  String? imagenBloque,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Bloque': nombreBloque,
      'Informacion_Bloque': informacionBloque,
      'Imagen_Bloque': imagenBloque,
    }.withoutNulls,
  );

  return firestoreData;
}
