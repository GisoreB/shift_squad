// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartStruct extends FFFirebaseStruct {
  ChartStruct({
    String? label,
    double? value,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _label = label,
        _value = value,
        super(firestoreUtilData);

  // "label" field.
  String? _label;
  String get label => _label ?? '';
  set label(String? val) => _label = val;

  bool hasLabel() => _label != null;

  // "value" field.
  double? _value;
  double get value => _value ?? 0.0;
  set value(double? val) => _value = val;

  void incrementValue(double amount) => value = value + amount;

  bool hasValue() => _value != null;

  static ChartStruct fromMap(Map<String, dynamic> data) => ChartStruct(
        label: data['label'] as String?,
        value: castToType<double>(data['value']),
      );

  static ChartStruct? maybeFromMap(dynamic data) =>
      data is Map ? ChartStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'label': _label,
        'value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'label': serializeParam(
          _label,
          ParamType.String,
        ),
        'value': serializeParam(
          _value,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartStruct(
        label: deserializeParam(
          data['label'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['value'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartStruct && label == other.label && value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([label, value]);
}

ChartStruct createChartStruct({
  String? label,
  double? value,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartStruct(
      label: label,
      value: value,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartStruct? updateChartStruct(
  ChartStruct? chart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartStructData(
  Map<String, dynamic> firestoreData,
  ChartStruct? chart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chart == null) {
    return;
  }
  if (chart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartData = getChartFirestoreData(chart, forFieldValue);
  final nestedData = chartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartFirestoreData(
  ChartStruct? chart, [
  bool forFieldValue = false,
]) {
  if (chart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chart.toMap());

  // Add any Firestore field values
  mapToFirestore(chart.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartListFirestoreData(
  List<ChartStruct>? charts,
) =>
    charts?.map((e) => getChartFirestoreData(e, true)).toList() ?? [];
