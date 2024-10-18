import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PetsRecord extends FirestoreRecord {
  PetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

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

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "gender" field.
  Gender? _gender;
  Gender? get gender => _gender;
  bool hasGender() => _gender != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "type" field.
  PetType? _type;
  PetType? get type => _type;
  bool hasType() => _type != null;

  // "breed" field.
  String? _breed;
  String get breed => _breed ?? '';
  bool hasBreed() => _breed != null;

  // "date_of_birth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  bool hasDateOfBirth() => _dateOfBirth != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _gender = deserializeEnum<Gender>(snapshotData['gender']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _type = deserializeEnum<PetType>(snapshotData['type']);
    _breed = snapshotData['breed'] as String?;
    _dateOfBirth = snapshotData['date_of_birth'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PetsRecord.fromSnapshot(s));

  static Future<PetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PetsRecord.fromSnapshot(s));

  static PetsRecord fromSnapshot(DocumentSnapshot snapshot) => PetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPetsRecordData({
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  DateTime? editedTime,
  Gender? gender,
  DocumentReference? owner,
  PetType? type,
  String? breed,
  String? dateOfBirth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'edited_time': editedTime,
      'gender': gender,
      'owner': owner,
      'type': type,
      'breed': breed,
      'date_of_birth': dateOfBirth,
    }.withoutNulls,
  );

  return firestoreData;
}

class PetsRecordDocumentEquality implements Equality<PetsRecord> {
  const PetsRecordDocumentEquality();

  @override
  bool equals(PetsRecord? e1, PetsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.gender == e2?.gender &&
        e1?.owner == e2?.owner &&
        e1?.type == e2?.type &&
        e1?.breed == e2?.breed &&
        e1?.dateOfBirth == e2?.dateOfBirth;
  }

  @override
  int hash(PetsRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.editedTime,
        e?.gender,
        e?.owner,
        e?.type,
        e?.breed,
        e?.dateOfBirth
      ]);

  @override
  bool isValidKey(Object? o) => o is PetsRecord;
}
