import 'package:flutter/material.dart'
    show ChangeNotifier, Color, Colors, VoidCallback;
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _OnboardingList = prefs
              .getStringList('ff_OnboardingList')
              ?.map((x) {
                try {
                  return OnboardingStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _OnboardingList;
    });
    _safeInit(() {
      _ChartData = prefs
              .getStringList('ff_ChartData')
              ?.map((x) {
                try {
                  return ChartStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ChartData;
    });
    _safeInit(() {
      _NotificationList = prefs
              .getStringList('ff_NotificationList')
              ?.map((path) => path.ref)
              .toList() ??
          _NotificationList;
    });
    _safeInit(() {
      _HelpList = prefs.getStringList('ff_HelpList') ?? _HelpList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<OnboardingStruct> _OnboardingList = [
    OnboardingStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Shift Selection Made Easy\",\"description\":\"Take control of your schedule, pick shifts on your own terms\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/oaqx5o5ikbxi/front-view-smiley-female-doctor_(1).png\"}')),
    OnboardingStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Discover and Select Shifts\",\"description\":\"Easily browse and select shifts based on your preferences\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/87ntkr0tdupx/front-view-smiley-male-doctor_1.png\"}')),
    OnboardingStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Seamless Payments\",\"description\":\"Receive timely and secure payments for your dedicated nursing work.\",\"image\":\"https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/shift-squad-s0bbro/assets/8463ssd44nqo/side-view-doctors-posing_1.png\"}'))
  ];
  List<OnboardingStruct> get OnboardingList => _OnboardingList;
  set OnboardingList(List<OnboardingStruct> value) {
    _OnboardingList = value;
    prefs.setStringList(
        'ff_OnboardingList', value.map((x) => x.serialize()).toList());
  }

  void addToOnboardingList(OnboardingStruct value) {
    OnboardingList.add(value);
    prefs.setStringList('ff_OnboardingList',
        _OnboardingList.map((x) => x.serialize()).toList());
  }

  void removeFromOnboardingList(OnboardingStruct value) {
    OnboardingList.remove(value);
    prefs.setStringList('ff_OnboardingList',
        _OnboardingList.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOnboardingList(int index) {
    OnboardingList.removeAt(index);
    prefs.setStringList('ff_OnboardingList',
        _OnboardingList.map((x) => x.serialize()).toList());
  }

  void updateOnboardingListAtIndex(
    int index,
    OnboardingStruct Function(OnboardingStruct) updateFn,
  ) {
    OnboardingList[index] = updateFn(_OnboardingList[index]);
    prefs.setStringList('ff_OnboardingList',
        _OnboardingList.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOnboardingList(int index, OnboardingStruct value) {
    OnboardingList.insert(index, value);
    prefs.setStringList('ff_OnboardingList',
        _OnboardingList.map((x) => x.serialize()).toList());
  }

  List<ChartStruct> _ChartData = [
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Jan\",\"value\":\"5\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Feb\",\"value\":\"10\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Mar\",\"value\":\"7\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Apr\",\"value\":\"10\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"May\",\"value\":\"12\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Jun\",\"value\":\"2\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Jul\",\"value\":\"18\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Aug\",\"value\":\"10\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Sep\",\"value\":\"4\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Oct\",\"value\":\"10\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Nov\",\"value\":\"15\"}')),
    ChartStruct.fromSerializableMap(
        jsonDecode('{\"label\":\"Dec\",\"value\":\"1\"}'))
  ];
  List<ChartStruct> get ChartData => _ChartData;
  set ChartData(List<ChartStruct> value) {
    _ChartData = value;
    prefs.setStringList(
        'ff_ChartData', value.map((x) => x.serialize()).toList());
  }

  void addToChartData(ChartStruct value) {
    ChartData.add(value);
    prefs.setStringList(
        'ff_ChartData', _ChartData.map((x) => x.serialize()).toList());
  }

  void removeFromChartData(ChartStruct value) {
    ChartData.remove(value);
    prefs.setStringList(
        'ff_ChartData', _ChartData.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromChartData(int index) {
    ChartData.removeAt(index);
    prefs.setStringList(
        'ff_ChartData', _ChartData.map((x) => x.serialize()).toList());
  }

  void updateChartDataAtIndex(
    int index,
    ChartStruct Function(ChartStruct) updateFn,
  ) {
    ChartData[index] = updateFn(_ChartData[index]);
    prefs.setStringList(
        'ff_ChartData', _ChartData.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInChartData(int index, ChartStruct value) {
    ChartData.insert(index, value);
    prefs.setStringList(
        'ff_ChartData', _ChartData.map((x) => x.serialize()).toList());
  }

  List<DocumentReference> _NotificationList = [];
  List<DocumentReference> get NotificationList => _NotificationList;
  set NotificationList(List<DocumentReference> value) {
    _NotificationList = value;
    prefs.setStringList(
        'ff_NotificationList', value.map((x) => x.path).toList());
  }

  void addToNotificationList(DocumentReference value) {
    NotificationList.add(value);
    prefs.setStringList(
        'ff_NotificationList', _NotificationList.map((x) => x.path).toList());
  }

  void removeFromNotificationList(DocumentReference value) {
    NotificationList.remove(value);
    prefs.setStringList(
        'ff_NotificationList', _NotificationList.map((x) => x.path).toList());
  }

  void removeAtIndexFromNotificationList(int index) {
    NotificationList.removeAt(index);
    prefs.setStringList(
        'ff_NotificationList', _NotificationList.map((x) => x.path).toList());
  }

  void updateNotificationListAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    NotificationList[index] = updateFn(_NotificationList[index]);
    prefs.setStringList(
        'ff_NotificationList', _NotificationList.map((x) => x.path).toList());
  }

  void insertAtIndexInNotificationList(int index, DocumentReference value) {
    NotificationList.insert(index, value);
    prefs.setStringList(
        'ff_NotificationList', _NotificationList.map((x) => x.path).toList());
  }

  List<String> _HelpList = [
    'Where can I find troubleshooting tips for common issues ?',
    'How do I contact customer support ?',
    'How do I submit a bug report or suggest a feature ?',
    'How do I reset my password ?',
    'What do I do if I\'m having trouble logging in ?',
    'How do I cancel my subscription ?'
  ];
  List<String> get HelpList => _HelpList;
  set HelpList(List<String> value) {
    _HelpList = value;
    prefs.setStringList('ff_HelpList', value);
  }

  void addToHelpList(String value) {
    HelpList.add(value);
    prefs.setStringList('ff_HelpList', _HelpList);
  }

  void removeFromHelpList(String value) {
    HelpList.remove(value);
    prefs.setStringList('ff_HelpList', _HelpList);
  }

  void removeAtIndexFromHelpList(int index) {
    HelpList.removeAt(index);
    prefs.setStringList('ff_HelpList', _HelpList);
  }

  void updateHelpListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    HelpList[index] = updateFn(_HelpList[index]);
    prefs.setStringList('ff_HelpList', _HelpList);
  }

  void insertAtIndexInHelpList(int index, String value) {
    HelpList.insert(index, value);
    prefs.setStringList('ff_HelpList', _HelpList);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
