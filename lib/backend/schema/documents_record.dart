import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocumentsRecord extends FirestoreRecord {
  DocumentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  DocumentType? _type;
  DocumentType? get type => _type;
  bool hasType() => _type != null;

  // "document_url" field.
  String? _documentUrl;
  String get documentUrl => _documentUrl ?? '';
  bool hasDocumentUrl() => _documentUrl != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "archived" field.
  bool? _archived;
  bool get archived => _archived ?? false;
  bool hasArchived() => _archived != null;

  // "booking" field.
  DocumentReference? _booking;
  DocumentReference? get booking => _booking;
  bool hasBooking() => _booking != null;

  // "pet" field.
  DocumentReference? _pet;
  DocumentReference? get pet => _pet;
  bool hasPet() => _pet != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _type = deserializeEnum<DocumentType>(snapshotData['type']);
    _documentUrl = snapshotData['document_url'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _archived = snapshotData['archived'] as bool?;
    _booking = snapshotData['booking'] as DocumentReference?;
    _pet = snapshotData['pet'] as DocumentReference?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documents');

  static Stream<DocumentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocumentsRecord.fromSnapshot(s));

  static Future<DocumentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocumentsRecord.fromSnapshot(s));

  static DocumentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocumentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocumentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocumentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocumentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocumentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocumentsRecordData({
  DocumentType? type,
  String? documentUrl,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? archived,
  DocumentReference? booking,
  DocumentReference? pet,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'document_url': documentUrl,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'archived': archived,
      'booking': booking,
      'pet': pet,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocumentsRecordDocumentEquality implements Equality<DocumentsRecord> {
  const DocumentsRecordDocumentEquality();

  @override
  bool equals(DocumentsRecord? e1, DocumentsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.documentUrl == e2?.documentUrl &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.archived == e2?.archived &&
        e1?.booking == e2?.booking &&
        e1?.pet == e2?.pet &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(DocumentsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.documentUrl,
        e?.createdAt,
        e?.updatedAt,
        e?.archived,
        e?.booking,
        e?.pet,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is DocumentsRecord;
}
