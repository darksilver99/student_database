import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StudentListRecord extends FirestoreRecord {
  StudentListRecord._(
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

  // "prefix_name" field.
  String? _prefixName;
  String get prefixName => _prefixName ?? '';
  bool hasPrefixName() => _prefixName != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "room_ref" field.
  DocumentReference? _roomRef;
  DocumentReference? get roomRef => _roomRef;
  bool hasRoomRef() => _roomRef != null;

  void _initializeFields() {
    _createDate = snapshotData['create_date'] as DateTime?;
    _createBy = snapshotData['create_by'] as DocumentReference?;
    _updateDate = snapshotData['update_date'] as DateTime?;
    _updateBy = snapshotData['update_by'] as DocumentReference?;
    _status = castToType<int>(snapshotData['status']);
    _prefixName = snapshotData['prefix_name'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _roomRef = snapshotData['room_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('student_list');

  static Stream<StudentListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StudentListRecord.fromSnapshot(s));

  static Future<StudentListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StudentListRecord.fromSnapshot(s));

  static StudentListRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StudentListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StudentListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StudentListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StudentListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StudentListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStudentListRecordData({
  DateTime? createDate,
  DocumentReference? createBy,
  DateTime? updateDate,
  DocumentReference? updateBy,
  int? status,
  String? prefixName,
  String? firstName,
  String? lastName,
  DocumentReference? roomRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'create_date': createDate,
      'create_by': createBy,
      'update_date': updateDate,
      'update_by': updateBy,
      'status': status,
      'prefix_name': prefixName,
      'first_name': firstName,
      'last_name': lastName,
      'room_ref': roomRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class StudentListRecordDocumentEquality implements Equality<StudentListRecord> {
  const StudentListRecordDocumentEquality();

  @override
  bool equals(StudentListRecord? e1, StudentListRecord? e2) {
    return e1?.createDate == e2?.createDate &&
        e1?.createBy == e2?.createBy &&
        e1?.updateDate == e2?.updateDate &&
        e1?.updateBy == e2?.updateBy &&
        e1?.status == e2?.status &&
        e1?.prefixName == e2?.prefixName &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.roomRef == e2?.roomRef;
  }

  @override
  int hash(StudentListRecord? e) => const ListEquality().hash([
        e?.createDate,
        e?.createBy,
        e?.updateDate,
        e?.updateBy,
        e?.status,
        e?.prefixName,
        e?.firstName,
        e?.lastName,
        e?.roomRef
      ]);

  @override
  bool isValidKey(Object? o) => o is StudentListRecord;
}
