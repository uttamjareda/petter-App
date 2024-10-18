import 'package:collection/collection.dart';

enum UserType {
  user,
  expert,
}

enum AddressType {
  Home,
  Family,
  Other,
}

enum PetType {
  Dog,
  Cat,
}

enum Gender {
  Male,
  Female,
}

enum ServiceType {
  Medical,
  Grooming,
}

enum BookingStatus {
  Completed,
  Cancelled,
  Pending,
  InProgress,
}

enum ServiceCategory {
  vaccine,
  homeVet,
  bloodTest,
  virtualConsultation,
  travelCertificate,
  putToSleep,
}

enum DocumentType {
  Prescription,
  Vaccination,
  Medical,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (UserType):
      return UserType.values.deserialize(value) as T?;
    case (AddressType):
      return AddressType.values.deserialize(value) as T?;
    case (PetType):
      return PetType.values.deserialize(value) as T?;
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    case (ServiceType):
      return ServiceType.values.deserialize(value) as T?;
    case (BookingStatus):
      return BookingStatus.values.deserialize(value) as T?;
    case (ServiceCategory):
      return ServiceCategory.values.deserialize(value) as T?;
    case (DocumentType):
      return DocumentType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
