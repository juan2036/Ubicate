import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventoRecord extends FirestoreRecord {
  EventoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nombre_Evento" field.
  String? _nombreEvento;
  String get nombreEvento => _nombreEvento ?? '';
  bool hasNombreEvento() => _nombreEvento != null;

  // "Informacion_Evento" field.
  String? _informacionEvento;
  String get informacionEvento => _informacionEvento ?? '';
  bool hasInformacionEvento() => _informacionEvento != null;

  // "Lugar_Evento" field.
  String? _lugarEvento;
  String get lugarEvento => _lugarEvento ?? '';
  bool hasLugarEvento() => _lugarEvento != null;

  // "Fecha_Evento" field.
  String? _fechaEvento;
  String get fechaEvento => _fechaEvento ?? '';
  bool hasFechaEvento() => _fechaEvento != null;

  // "Imagen_Evento" field.
  String? _imagenEvento;
  String get imagenEvento => _imagenEvento ?? '';
  bool hasImagenEvento() => _imagenEvento != null;

  void _initializeFields() {
    _nombreEvento = snapshotData['Nombre_Evento'] as String?;
    _informacionEvento = snapshotData['Informacion_Evento'] as String?;
    _lugarEvento = snapshotData['Lugar_Evento'] as String?;
    _fechaEvento = snapshotData['Fecha_Evento'] as String?;
    _imagenEvento = snapshotData['Imagen_Evento'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Evento');

  static Stream<EventoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventoRecord.fromSnapshot(s));

  static Future<EventoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventoRecord.fromSnapshot(s));

  static EventoRecord fromSnapshot(DocumentSnapshot snapshot) => EventoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createEventoRecordData({
  String? nombreEvento,
  String? informacionEvento,
  String? lugarEvento,
  String? fechaEvento,
  String? imagenEvento,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nombre_Evento': nombreEvento,
      'Informacion_Evento': informacionEvento,
      'Lugar_Evento': lugarEvento,
      'Fecha_Evento': fechaEvento,
      'Imagen_Evento': imagenEvento,
    }.withoutNulls,
  );

  return firestoreData;
}
