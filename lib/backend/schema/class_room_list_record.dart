import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassRoomListRecord extends FirestoreRecord {
  ClassRoomListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "create_date" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "create_by" field.
  DocumentReference? _createBy;
  DocumentReference? get createBy => _createBy;
  bool hasCreateBy() => _createBy != null;

  // "update_date" field.
  DateTime? _updateDate;
  DateTime? get updateDate => _updateDate;
  bool hasUpdateDate() => _updateDate != null;

  // "update_by" field.
  DocumentReference? _updateBy;
  DocumentReference? get updateBy => _updateBy;
  bool hasUpdateBy() => _updateBy != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  // "years" field.
  int? _years;
  int get years => _years ?? 0;
  bool hasYears() => _years != null;

  // "term" field.
  int? _term;
  int get term => _term ?? 0;
  bool hasTerm() => _term != null;

  // "room" field.
  String? _room;
  String get room => _room ?? '';
  bool hasRoom() => _room != null;

  // "detail" field.
  String? _detail;
  String get detail => _detail ?? '';
  bool hasDetail() => _detail != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _createBy = snapshotData['create_by'] as DocumentReference?;
    _updateDate = snapshotData['update_date'] as DateTime?;
    _updateBy = snapshotData['update_by'] as DocumentReference?;
    _status = castToType<int>(snapshotData['status']);
    _years = castToType<int>(snapshotData['years']);
    _term = castToType<int>(snapshotData['term']);
    _room = snapshotData['room'] as String?;
    _detail = snapshotData['detail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('class_room_list');

  static Stream<ClassRoomListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassRoomListRecord.fromSnapshot(s));

  static Future<ClassRoomListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassRoomListRecord.fromSnapshot(s));

  static ClassRoomListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassRoomListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassRoomListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassRoomListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassRoomListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassRoomListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassRoomListRecordData({
  DateTime? createDate,
  DocumentReference? createBy,
  DateTime? updateDate,
  DocumentReference? updateBy,
  int? status,
  int? years,
  int? term,
  String? room,
  String? detail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'create_by': createBy,
      'update_date': updateDate,
      'update_by': updateBy,
      'status': status,
      'years': years,
      'term': term,
      'room': room,
      'detail': detail,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassRoomListRecordDocumentEquality
    implements Equality<ClassRoomListRecord> {
  const ClassRoomListRecordDocumentEquality();

  @override
  bool equals(ClassRoomListRecord? e1, ClassRoomListRecord? e2) {
    return e1?.createDate == e2?.createDate &&
        e1?.createBy == e2?.createBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateBy == e2?.updateBy &&
        e1?.status == e2?.status &&
        e1?.years == e2?.years &&
        e1?.term == e2?.term &&
        e1?.room == e2?.room &&
        e1?.detail == e2?.detail;
  }

  @override
  int hash(ClassRoomListRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.createBy,
        e?.updateDate,
        e?.updateBy,
        e?.status,
        e?.years,
        e?.term,
        e?.room,
        e?.detail
      ]);

  @override
  bool isValidKey(Object? o) => o is ClassRoomListRecord;
}
