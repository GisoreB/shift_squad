import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleRecord extends FirestoreRecord {
  ScheduleRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "labels" field.
  List<String>? _labels;
  List<String> get labels => _labels ?? const [];
  bool hasLabels() => _labels != null;

  // "isFav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  bool hasIsFav() => _isFav != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "charge" field.
  String? _charge;
  String get charge => _charge ?? '';
  bool hasCharge() => _charge != null;

  // "chargePerHour" field.
  double? _chargePerHour;
  double get chargePerHour => _chargePerHour ?? 0.0;
  bool hasChargePerHour() => _chargePerHour != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "type" field.
  ScheduleEnum? _type;
  ScheduleEnum? get type => _type;
  bool hasType() => _type != null;

  // "schedulerName" field.
  String? _schedulerName;
  String get schedulerName => _schedulerName ?? '';
  bool hasSchedulerName() => _schedulerName != null;

  // "schedulerPhoto" field.
  String? _schedulerPhoto;
  String get schedulerPhoto => _schedulerPhoto ?? '';
  bool hasSchedulerPhoto() => _schedulerPhoto != null;

  // "hospitalImageURL" field.
  String? _hospitalImageURL;
  String get hospitalImageURL => _hospitalImageURL ?? '';
  bool hasHospitalImageURL() => _hospitalImageURL != null;

  void _initializeFields() {
    _labels = getDataList(snapshotData['labels']);
    _isFav = snapshotData['isFav'] as bool?;
    _title = snapshotData['title'] as String?;
    _charge = snapshotData['charge'] as String?;
    _chargePerHour = castToType<double>(snapshotData['chargePerHour']);
    _date = snapshotData['date'] as DateTime?;
    _time = snapshotData['time'] as String?;
    _location = snapshotData['location'] as String?;
    _type = snapshotData['type'] is ScheduleEnum
        ? snapshotData['type']
        : deserializeEnum<ScheduleEnum>(snapshotData['type']);
    _schedulerName = snapshotData['schedulerName'] as String?;
    _schedulerPhoto = snapshotData['schedulerPhoto'] as String?;
    _hospitalImageURL = snapshotData['hospitalImageURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schedule');

  static Stream<ScheduleRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ScheduleRecord.fromSnapshot(s));

  static Future<ScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ScheduleRecord.fromSnapshot(s));

  static ScheduleRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ScheduleRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ScheduleRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ScheduleRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ScheduleRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ScheduleRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createScheduleRecordData({
  bool? isFav,
  String? title,
  String? charge,
  double? chargePerHour,
  DateTime? date,
  String? time,
  String? location,
  ScheduleEnum? type,
  String? schedulerName,
  String? schedulerPhoto,
  String? hospitalImageURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'isFav': isFav,
      'title': title,
      'charge': charge,
      'chargePerHour': chargePerHour,
      'date': date,
      'time': time,
      'location': location,
      'type': type,
      'schedulerName': schedulerName,
      'schedulerPhoto': schedulerPhoto,
      'hospitalImageURL': hospitalImageURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class ScheduleRecordDocumentEquality implements Equality<ScheduleRecord> {
  const ScheduleRecordDocumentEquality();

  @override
  bool equals(ScheduleRecord? e1, ScheduleRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.labels, e2?.labels) &&
        e1?.isFav == e2?.isFav &&
        e1?.title == e2?.title &&
        e1?.charge == e2?.charge &&
        e1?.chargePerHour == e2?.chargePerHour &&
        e1?.date == e2?.date &&
        e1?.time == e2?.time &&
        e1?.location == e2?.location &&
        e1?.type == e2?.type &&
        e1?.schedulerName == e2?.schedulerName &&
        e1?.schedulerPhoto == e2?.schedulerPhoto &&
        e1?.hospitalImageURL == e2?.hospitalImageURL;
  }

  @override
  int hash(ScheduleRecord? e) => const ListEquality().hash([
        const ListEquality().hash(e?.labels),
        e?.isFav,
        e?.title,
        e?.charge,
        e?.chargePerHour,
        e?.date,
        e?.time,
        e?.location,
        e?.type,
        e?.schedulerName,
        e?.schedulerPhoto,
        e?.hospitalImageURL
      ]);

  @override
  bool isValidKey(Object? o) => o is ScheduleRecord;
}
