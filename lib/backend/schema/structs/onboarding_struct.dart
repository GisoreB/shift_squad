// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OnboardingStruct extends FFFirebaseStruct {
  OnboardingStruct({
    String? title,
    String? description,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _title = title,
        _description = description,
        _image = image,
        super(firestoreUtilData);

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static OnboardingStruct fromMap(Map<String, dynamic> data) =>
      OnboardingStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        image: data['image'] as String?,
      );

  static OnboardingStruct? maybeFromMap(dynamic data) => data is Map
      ? OnboardingStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static OnboardingStruct fromSerializableMap(Map<String, dynamic> data) =>
      OnboardingStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OnboardingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OnboardingStruct &&
        title == other.title &&
        description == other.description &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([title, description, image]);
}

OnboardingStruct createOnboardingStruct({
  String? title,
  String? description,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OnboardingStruct(
      title: title,
      description: description,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OnboardingStruct? updateOnboardingStruct(
  OnboardingStruct? onboarding, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    onboarding
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOnboardingStructData(
  Map<String, dynamic> firestoreData,
  OnboardingStruct? onboarding,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (onboarding == null) {
    return;
  }
  if (onboarding.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && onboarding.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final onboardingData = getOnboardingFirestoreData(onboarding, forFieldValue);
  final nestedData = onboardingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = onboarding.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOnboardingFirestoreData(
  OnboardingStruct? onboarding, [
  bool forFieldValue = false,
]) {
  if (onboarding == null) {
    return {};
  }
  final firestoreData = mapToFirestore(onboarding.toMap());

  // Add any Firestore field values
  mapToFirestore(onboarding.firestoreUtilData.fieldValues)
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOnboardingListFirestoreData(
  List<OnboardingStruct>? onboardings,
) =>
    onboardings?.map((e) => getOnboardingFirestoreData(e, true)).toList() ?? [];
