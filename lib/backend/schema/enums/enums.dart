import 'package:collection/collection.dart';

enum ScheduleEnum {
  Scheduled,
  Requested,
  Ongoing,
  Completed,
  Cancelled,
}

enum PaymentStatus {
  InProgress,
  Success,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (ScheduleEnum):
      return ScheduleEnum.values.deserialize(value) as T?;
    case (PaymentStatus):
      return PaymentStatus.values.deserialize(value) as T?;
    default:
      return null;
  }
}
