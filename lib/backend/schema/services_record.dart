import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServicesRecord extends FirestoreRecord {
  ServicesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "specifications" field.
  String? _specifications;
  String get specifications => _specifications ?? '';
  bool hasSpecifications() => _specifications != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "thumbnail_image" field.
  String? _thumbnailImage;
  String get thumbnailImage => _thumbnailImage ?? '';
  bool hasThumbnailImage() => _thumbnailImage != null;

  // "main_image" field.
  String? _mainImage;
  String get mainImage => _mainImage ?? '';
  bool hasMainImage() => _mainImage != null;

  // "service_type" field.
  ServiceType? _serviceType;
  ServiceType? get serviceType => _serviceType;
  bool hasServiceType() => _serviceType != null;

  // "service_category" field.
  ServiceCategory? _serviceCategory;
  ServiceCategory? get serviceCategory => _serviceCategory;
  bool hasServiceCategory() => _serviceCategory != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "discount" field.
  double? _discount;
  double get discount => _discount ?? 0.0;
  bool hasDiscount() => _discount != null;

  // "step1" field.
  String? _step1;
  String get step1 => _step1 ?? '';
  bool hasStep1() => _step1 != null;

  // "step2" field.
  String? _step2;
  String get step2 => _step2 ?? '';
  bool hasStep2() => _step2 != null;

  // "step3" field.
  String? _step3;
  String get step3 => _step3 ?? '';
  bool hasStep3() => _step3 != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _specifications = snapshotData['specifications'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _thumbnailImage = snapshotData['thumbnail_image'] as String?;
    _mainImage = snapshotData['main_image'] as String?;
    _serviceType = deserializeEnum<ServiceType>(snapshotData['service_type']);
    _serviceCategory =
        deserializeEnum<ServiceCategory>(snapshotData['service_category']);
    _isActive = snapshotData['is_active'] as bool?;
    _discount = castToType<double>(snapshotData['discount']);
    _step1 = snapshotData['step1'] as String?;
    _step2 = snapshotData['step2'] as String?;
    _step3 = snapshotData['step3'] as String?;
    _displayName = snapshotData['display_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServicesRecord.fromSnapshot(s));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServicesRecord.fromSnapshot(s));

  static ServicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServicesRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  DateTime? createdAt,
  DateTime? modifiedAt,
  bool? onSale,
  double? salePrice,
  String? thumbnailImage,
  String? mainImage,
  ServiceType? serviceType,
  ServiceCategory? serviceCategory,
  bool? isActive,
  double? discount,
  String? step1,
  String? step2,
  String? step3,
  String? displayName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'specifications': specifications,
      'price': price,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'thumbnail_image': thumbnailImage,
      'main_image': mainImage,
      'service_type': serviceType,
      'service_category': serviceCategory,
      'is_active': isActive,
      'discount': discount,
      'step1': step1,
      'step2': step2,
      'step3': step3,
      'display_name': displayName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServicesRecordDocumentEquality implements Equality<ServicesRecord> {
  const ServicesRecordDocumentEquality();

  @override
  bool equals(ServicesRecord? e1, ServicesRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.specifications == e2?.specifications &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.onSale == e2?.onSale &&
        e1?.salePrice == e2?.salePrice &&
        e1?.thumbnailImage == e2?.thumbnailImage &&
        e1?.mainImage == e2?.mainImage &&
        e1?.serviceType == e2?.serviceType &&
        e1?.serviceCategory == e2?.serviceCategory &&
        e1?.isActive == e2?.isActive &&
        e1?.discount == e2?.discount &&
        e1?.step1 == e2?.step1 &&
        e1?.step2 == e2?.step2 &&
        e1?.step3 == e2?.step3 &&
        e1?.displayName == e2?.displayName;
  }

  @override
  int hash(ServicesRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.specifications,
        e?.price,
        e?.createdAt,
        e?.modifiedAt,
        e?.onSale,
        e?.salePrice,
        e?.thumbnailImage,
        e?.mainImage,
        e?.serviceType,
        e?.serviceCategory,
        e?.isActive,
        e?.discount,
        e?.step1,
        e?.step2,
        e?.step3,
        e?.displayName
      ]);

  @override
  bool isValidKey(Object? o) => o is ServicesRecord;
}
