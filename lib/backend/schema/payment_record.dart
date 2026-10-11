import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentRecord extends FirestoreRecord {
  PaymentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  PaymentStatus? _status;
  PaymentStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "amount" field.
  String? _amount;
  String get amount => _amount ?? '';
  bool hasAmount() => _amount != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _createdAt = snapshotData['created_at'] as DateTime?;
    _status = snapshotData['status'] is PaymentStatus
        ? snapshotData['status']
        : deserializeEnum<PaymentStatus>(snapshotData['status']);
    _amount = snapshotData['amount'] as String?;
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payment');

  static Stream<PaymentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentRecord.fromSnapshot(s));

  static Future<PaymentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentRecord.fromSnapshot(s));

  static PaymentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentRecord && reference.path == other.reference.path;
}

Map<String, dynamic> createPaymentRecordData({
  DateTime? createdAt,
  PaymentStatus? status,
  String? amount,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_at': createdAt,
      'status': status,
      'amount': amount,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentRecordDocumentEquality implements Equality<PaymentRecord> {
  const PaymentRecordDocumentEquality();

  @override
  bool equals(PaymentRecord? e1, PaymentRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.status == e2?.status &&
        e1?.amount == e2?.amount &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(PaymentRecord? e) => const ListEquality()
      .hash([e?.createdAt, e?.status, e?.amount, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is PaymentRecord;
}
