// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class Time2Struct extends FFFirebaseStruct {
  Time2Struct({
    String? createdAt,
    String? name,
    String? title,
    String? id,
    String? avatar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdAt = createdAt,
        _name = name,
        _title = title,
        _id = id,
        _avatar = avatar,
        super(firestoreUtilData);

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "avatar" field.
  String? _avatar;
  String get avatar => _avatar ?? '';
  set avatar(String? val) => _avatar = val;

  bool hasAvatar() => _avatar != null;

  static Time2Struct fromMap(Map<String, dynamic> data) => Time2Struct(
        createdAt: data['createdAt'] as String?,
        name: data['name'] as String?,
        title: data['title'] as String?,
        id: data['id'] as String?,
        avatar: data['avatar'] as String?,
      );

  static Time2Struct? maybeFromMap(dynamic data) =>
      data is Map ? Time2Struct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'createdAt': _createdAt,
        'name': _name,
        'title': _title,
        'id': _id,
        'avatar': _avatar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'avatar': serializeParam(
          _avatar,
          ParamType.String,
        ),
      }.withoutNulls;

  static Time2Struct fromSerializableMap(Map<String, dynamic> data) =>
      Time2Struct(
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        avatar: deserializeParam(
          data['avatar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'Time2Struct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Time2Struct &&
        createdAt == other.createdAt &&
        name == other.name &&
        title == other.title &&
        id == other.id &&
        avatar == other.avatar;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([createdAt, name, title, id, avatar]);
}

Time2Struct createTime2Struct({
  String? createdAt,
  String? name,
  String? title,
  String? id,
  String? avatar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Time2Struct(
      createdAt: createdAt,
      name: name,
      title: title,
      id: id,
      avatar: avatar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Time2Struct? updateTime2Struct(
  Time2Struct? time2, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    time2
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTime2StructData(
  Map<String, dynamic> firestoreData,
  Time2Struct? time2,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (time2 == null) {
    return;
  }
  if (time2.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && time2.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final time2Data = getTime2FirestoreData(time2, forFieldValue);
  final nestedData = time2Data.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = time2.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTime2FirestoreData(
  Time2Struct? time2, [
  bool forFieldValue = false,
]) {
  if (time2 == null) {
    return {};
  }
  final firestoreData = mapToFirestore(time2.toMap());

  // Add any Firestore field values
  time2.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTime2ListFirestoreData(
  List<Time2Struct>? time2s,
) =>
    time2s?.map((e) => getTime2FirestoreData(e, true)).toList() ?? [];
