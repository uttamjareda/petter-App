import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressRecord extends FirestoreRecord {
  AddressRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "default_address" field.
  bool? _defaultAddress;
  bool get defaultAddress => _defaultAddress ?? false;
  bool hasDefaultAddress() => _defaultAddress != null;

  // "addressType" field.
  AddressType? _addressType;
  AddressType? get addressType => _addressType;
  bool hasAddressType() => _addressType != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _owner = snapshotData['owner'] as DocumentReference?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _defaultAddress = snapshotData['default_address'] as bool?;
    _addressType = deserializeEnum<AddressType>(snapshotData['addressType']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('address')
          : FirebaseFirestore.instance.collectionGroup('address');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('address').doc(id);

  static Stream<AddressRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AddressRecord.fromSnapshot(s));

  static Future<AddressRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AddressRecord.fromSnapshot(s));

  static AddressRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AddressRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AddressRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AddressRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AddressRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AddressRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAddressRecordData({
  AddressStruct? address,
  DocumentReference? owner,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? archived,
  bool? defaultAddress,
  AddressType? addressType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'address': AddressStruct().toMap(),
      'owner': owner,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'archived': archived,
      'default_address': defaultAddress,
      'addressType': addressType,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  return firestoreData;
}

class AddressRecordDocumentEquality implements Equality<AddressRecord> {
  const AddressRecordDocumentEquality();

  @override
  bool equals(AddressRecord? e1, AddressRecord? e2) {
    return e1?.address == e2?.address &&
        e1?.owner == e2?.owner &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.archived == e2?.archived &&
        e1?.defaultAddress == e2?.defaultAddress &&
        e1?.addressType == e2?.addressType;
  }

  @override
  int hash(AddressRecord? e) => const ListEquality().hash([
        e?.address,
        e?.owner,
        e?.createdAt,
        e?.modifiedAt,
        e?.archived,
        e?.defaultAddress,
        e?.addressType
      ]);

  @override
  bool isValidKey(Object? o) => o is AddressRecord;
}
