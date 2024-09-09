import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HdfgRecord extends FirestoreRecord {
  HdfgRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "asdasd" field.
  DocumentReference? _asdasd;
  DocumentReference? get asdasd => _asdasd;
  bool hasAsdasd() => _asdasd != null;

  // "dfgdg" field.
  List<DocumentReference>? _dfgdg;
  List<DocumentReference> get dfgdg => _dfgdg ?? const [];
  bool hasDfgdg() => _dfgdg != null;

  void _initializeFields() {
    _asdasd = snapshotData['asdasd'] as DocumentReference?;
    _dfgdg = getDataList(snapshotData['dfgdg']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hdfg');

  static Stream<HdfgRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HdfgRecord.fromSnapshot(s));

  static Future<HdfgRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HdfgRecord.fromSnapshot(s));

  static HdfgRecord fromSnapshot(DocumentSnapshot snapshot) => HdfgRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HdfgRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HdfgRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HdfgRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HdfgRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHdfgRecordData({
  DocumentReference? asdasd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'asdasd': asdasd,
    }.withoutNulls,
  );

  return firestoreData;
}

class HdfgRecordDocumentEquality implements Equality<HdfgRecord> {
  const HdfgRecordDocumentEquality();

  @override
  bool equals(HdfgRecord? e1, HdfgRecord? e2) {
    const listEquality = ListEquality();
    return e1?.asdasd == e2?.asdasd &&
        listEquality.equals(e1?.dfgdg, e2?.dfgdg);
  }

  @override
  int hash(HdfgRecord? e) => const ListEquality().hash([e?.asdasd, e?.dfgdg]);

  @override
  bool isValidKey(Object? o) => o is HdfgRecord;
}
