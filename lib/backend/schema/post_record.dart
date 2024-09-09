import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "gfd" field.
  List<DocumentReference>? _gfd;
  List<DocumentReference> get gfd => _gfd ?? const [];
  bool hasGfd() => _gfd != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _gfd = getDataList(snapshotData['gfd']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('post')
          : FirebaseFirestore.instance.collectionGroup('post');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('post').doc(id);

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.gfd, e2?.gfd);
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([e?.gfd]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
