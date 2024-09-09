import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RgerRecord extends FirestoreRecord {
  RgerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "like" field.
  List<DocumentReference>? _like;
  List<DocumentReference> get like => _like ?? const [];
  bool hasLike() => _like != null;

  // "aaaa" field.
  List<DocumentReference>? _aaaa;
  List<DocumentReference> get aaaa => _aaaa ?? const [];
  bool hasAaaa() => _aaaa != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "gyugyu" field.
  DocumentReference? _gyugyu;
  DocumentReference? get gyugyu => _gyugyu;
  bool hasGyugyu() => _gyugyu != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
    _like = getDataList(snapshotData['like']);
    _aaaa = getDataList(snapshotData['aaaa']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _gyugyu = snapshotData['gyugyu'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rger');

  static Stream<RgerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RgerRecord.fromSnapshot(s));

  static Future<RgerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RgerRecord.fromSnapshot(s));

  static RgerRecord fromSnapshot(DocumentSnapshot snapshot) => RgerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RgerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RgerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RgerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RgerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRgerRecordData({
  String? name,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DocumentReference? gyugyu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'gyugyu': gyugyu,
    }.withoutNulls,
  );

  return firestoreData;
}

class RgerRecordDocumentEquality implements Equality<RgerRecord> {
  const RgerRecordDocumentEquality();

  @override
  bool equals(RgerRecord? e1, RgerRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.email == e2?.email &&
        listEquality.equals(e1?.like, e2?.like) &&
        listEquality.equals(e1?.aaaa, e2?.aaaa) &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.gyugyu == e2?.gyugyu;
  }

  @override
  int hash(RgerRecord? e) => const ListEquality().hash([
        e?.name,
        e?.email,
        e?.like,
        e?.aaaa,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.gyugyu
      ]);

  @override
  bool isValidKey(Object? o) => o is RgerRecord;
}
