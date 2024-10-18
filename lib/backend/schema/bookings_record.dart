import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "pet" field.
  DocumentReference? _pet;
  DocumentReference? get pet => _pet;
  bool hasPet() => _pet != null;

  // "address" field.
  DocumentReference? _address;
  DocumentReference? get address => _address;
  bool hasAddress() => _address != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  bool hasComments() => _comments != null;

  // "is_active" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "updated_time" field.
  DateTime? _updatedTime;
  DateTime? get updatedTime => _updatedTime;
  bool hasUpdatedTime() => _updatedTime != null;

  // "services" field.
  List<DocumentReference>? _services;
  List<DocumentReference> get services => _services ?? const [];
  bool hasServices() => _services != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "status" field.
  BookingStatus? _status;
  BookingStatus? get status => _status;
  bool hasStatus() => _status != null;

  // "total_amount" field.
  int? _totalAmount;
  int get totalAmount => _totalAmount ?? 0;
  bool hasTotalAmount() => _totalAmount != null;

  // "discount" field.
  int? _discount;
  int get discount => _discount ?? 0;
  bool hasDiscount() => _discount != null;

  // "amount_paid" field.
  int? _amountPaid;
  int get amountPaid => _amountPaid ?? 0;
  bool hasAmountPaid() => _amountPaid != null;

  // "payment_mode" field.
  String? _paymentMode;
  String get paymentMode => _paymentMode ?? '';
  bool hasPaymentMode() => _paymentMode != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "start_time" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  bool hasStartTime() => _startTime != null;

  // "date_dateTime" field.
  DateTime? _dateDateTime;
  DateTime? get dateDateTime => _dateDateTime;
  bool hasDateDateTime() => _dateDateTime != null;

  // "pet_name" field.
  String? _petName;
  String get petName => _petName ?? '';
  bool hasPetName() => _petName != null;

  // "address_line1" field.
  String? _addressLine1;
  String get addressLine1 => _addressLine1 ?? '';
  bool hasAddressLine1() => _addressLine1 != null;

  // "servicesNames" field.
  List<String>? _servicesNames;
  List<String> get servicesNames => _servicesNames ?? const [];
  bool hasServicesNames() => _servicesNames != null;

  // "bookingDocuments" field.
  List<DocumentReference>? _bookingDocuments;
  List<DocumentReference> get bookingDocuments => _bookingDocuments ?? const [];
  bool hasBookingDocuments() => _bookingDocuments != null;

  void _initializeFields() {
    _pet = snapshotData['pet'] as DocumentReference?;
    _address = snapshotData['address'] as DocumentReference?;
    _comments = snapshotData['comments'] as String?;
    _isActive = snapshotData['is_active'] as bool?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _updatedTime = snapshotData['updated_time'] as DateTime?;
    _services = getDataList(snapshotData['services']);
    _user = snapshotData['user'] as DocumentReference?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _status = deserializeEnum<BookingStatus>(snapshotData['status']);
    _totalAmount = castToType<int>(snapshotData['total_amount']);
    _discount = castToType<int>(snapshotData['discount']);
    _amountPaid = castToType<int>(snapshotData['amount_paid']);
    _paymentMode = snapshotData['payment_mode'] as String?;
    _date = snapshotData['date'] as String?;
    _startTime = snapshotData['start_time'] as String?;
    _dateDateTime = snapshotData['date_dateTime'] as DateTime?;
    _petName = snapshotData['pet_name'] as String?;
    _addressLine1 = snapshotData['address_line1'] as String?;
    _servicesNames = getDataList(snapshotData['servicesNames']);
    _bookingDocuments = getDataList(snapshotData['bookingDocuments']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? pet,
  DocumentReference? address,
  String? comments,
  bool? isActive,
  DateTime? createdTime,
  DateTime? updatedTime,
  DocumentReference? user,
  String? phoneNumber,
  BookingStatus? status,
  int? totalAmount,
  int? discount,
  int? amountPaid,
  String? paymentMode,
  String? date,
  String? startTime,
  DateTime? dateDateTime,
  String? petName,
  String? addressLine1,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'pet': pet,
      'address': address,
      'comments': comments,
      'is_active': isActive,
      'created_time': createdTime,
      'updated_time': updatedTime,
      'user': user,
      'phone_number': phoneNumber,
      'status': status,
      'total_amount': totalAmount,
      'discount': discount,
      'amount_paid': amountPaid,
      'payment_mode': paymentMode,
      'date': date,
      'start_time': startTime,
      'date_dateTime': dateDateTime,
      'pet_name': petName,
      'address_line1': addressLine1,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.pet == e2?.pet &&
        e1?.address == e2?.address &&
        e1?.comments == e2?.comments &&
        e1?.isActive == e2?.isActive &&
        e1?.createdTime == e2?.createdTime &&
        e1?.updatedTime == e2?.updatedTime &&
        listEquality.equals(e1?.services, e2?.services) &&
        e1?.user == e2?.user &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.status == e2?.status &&
        e1?.totalAmount == e2?.totalAmount &&
        e1?.discount == e2?.discount &&
        e1?.amountPaid == e2?.amountPaid &&
        e1?.paymentMode == e2?.paymentMode &&
        e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.dateDateTime == e2?.dateDateTime &&
        e1?.petName == e2?.petName &&
        e1?.addressLine1 == e2?.addressLine1 &&
        listEquality.equals(e1?.servicesNames, e2?.servicesNames) &&
        listEquality.equals(e1?.bookingDocuments, e2?.bookingDocuments);
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.pet,
        e?.address,
        e?.comments,
        e?.isActive,
        e?.createdTime,
        e?.updatedTime,
        e?.services,
        e?.user,
        e?.phoneNumber,
        e?.status,
        e?.totalAmount,
        e?.discount,
        e?.amountPaid,
        e?.paymentMode,
        e?.date,
        e?.startTime,
        e?.dateDateTime,
        e?.petName,
        e?.addressLine1,
        e?.servicesNames,
        e?.bookingDocuments
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
