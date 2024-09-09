// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostStruct extends FFFirebaseStruct {
  PostStruct({
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

  static PostStruct fromMap(Map<String, dynamic> data) => PostStruct(
        createdAt: data['createdAt'] as String?,
        name: data['name'] as String?,
        title: data['title'] as String?,
        id: data['id'] as String?,
        avatar: data['avatar'] as String?,
      );

  static PostStruct? maybeFromMap(dynamic data) =>
      data is Map ? PostStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static PostStruct fromSerializableMap(Map<String, dynamic> data) =>
      PostStruct(
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
  String toString() => 'PostStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PostStruct &&
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

PostStruct createPostStruct({
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
    PostStruct(
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

PostStruct? updatePostStruct(
  PostStruct? post, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    post
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPostStructData(
  Map<String, dynamic> firestoreData,
  PostStruct? post,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (post == null) {
    return;
  }
  if (post.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && post.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final postData = getPostFirestoreData(post, forFieldValue);
  final nestedData = postData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = post.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPostFirestoreData(
  PostStruct? post, [
  bool forFieldValue = false,
]) {
  if (post == null) {
    return {};
  }
  final firestoreData = mapToFirestore(post.toMap());

  // Add any Firestore field values
  post.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPostListFirestoreData(
  List<PostStruct>? posts,
) =>
    posts?.map((e) => getPostFirestoreData(e, true)).toList() ?? [];
