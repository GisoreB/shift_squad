import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShiftRecord extends FirestoreRecord {
  ShiftRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "labels" field.
  List<String>? _labels;
  List<String> get labels => _labels ?? const [];
  bool hasLabels() => _labels != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "charges" field.
  String? _charges;
  String get charges => _charges ?? '';
  bool hasCharges() => _charges != null;

  // "datetime" field.
  String? _datetime;
  String get datetime => _datetime ?? '';
  bool hasDatetime() => _datetime != null;

  // "isFav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  bool hasIsFav() => _isFav != null;

  // "hosyLogo" field.
  String? _hosyLogo;
  String get hosyLogo => _hosyLogo ?? '';
  bool hasHosyLogo() => _hosyLogo != null;

  void _initializeFields() {
    _labels = getDataList(snapshotData['labels']);
    _title = snapshotData['title'] as String?;
    _location = snapshotData['location'] as String?;
    _charges = snapshotData['charges'] as String?;
    _datetime = snapshotData['datetime'] as String?;
    _isFav = snapshotData['isFav'] as bool?;
    _hosyLogo = snapshotData['hosyLogo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shift');

  static Stream<ShiftRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShiftRecord.fromSnapshot(s));

  static Future<ShiftRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShiftRecord.fromSnapshot(s));

  static ShiftRecord fromSnapshot(DocumentSnapshot snapshot) => ShiftRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShiftRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShiftRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShiftRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShiftRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createShiftRecordData({
  String? title,
  String? location,
  String? charges,
  String? datetime,
  bool? isFav,
  String? hosyLogo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'location': location,
      'charges': charges,
      'datetime': datetime,
      'isFav': isFav,
      'hosyLogo': hosyLogo,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShiftRecordDocumentEquality implements Equality<ShiftRecord> {
  const ShiftRecordDocumentEquality();

  @override
  bool equals(ShiftRecord? e1, ShiftRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.labels, e2?.labels) &&
        e1?.title == e2?.title &&
        e1?.location == e2?.location &&
        e1?.charges == e2?.charges &&
        e1?.datetime == e2?.datetime &&
        e1?.isFav == e2?.isFav &&
        e1?.hosyLogo == e2?.hosyLogo;
  }

  @override
  int hash(ShiftRecord? e) => const ListEquality().hash([
        const ListEquality().hash(e?.labels),
        e?.title,
        e?.location,
        e?.charges,
        e?.datetime,
        e?.isFav,
        e?.hosyLogo
      ]);

  @override
  bool isValidKey(Object? o) => o is ShiftRecord;
}
