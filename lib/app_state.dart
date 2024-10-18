import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartServices = prefs
              .getStringList('ff_cartServices')
              ?.map((path) => path.ref)
              .toList() ??
          _cartServices;
    });
    _safeInit(() {
      _cartAmountPayable = prefs
              .getStringList('ff_cartAmountPayable')
              ?.map(double.parse)
              .toList() ??
          _cartAmountPayable;
    });
    _safeInit(() {
      _cartDiscount =
          prefs.getStringList('ff_cartDiscount')?.map(double.parse).toList() ??
              _cartDiscount;
    });
    _safeInit(() {
      _cartTotal =
          prefs.getStringList('ff_cartTotal')?.map(double.parse).toList() ??
              _cartTotal;
    });
    _safeInit(() {
      _cartAddress = prefs.getString('ff_cartAddress')?.ref ?? _cartAddress;
    });
    _safeInit(() {
      _cartPet = prefs.getString('ff_cartPet')?.ref ?? _cartPet;
    });
    _safeInit(() {
      _cartOrderDateString =
          prefs.getString('ff_cartOrderDateString') ?? _cartOrderDateString;
    });
    _safeInit(() {
      _cartOrderTimeSlot =
          prefs.getString('ff_cartOrderTimeSlot') ?? _cartOrderTimeSlot;
    });
    _safeInit(() {
      _petNameCheckout =
          prefs.getString('ff_petNameCheckout') ?? _petNameCheckout;
    });
    _safeInit(() {
      _addressLine1Checkout =
          prefs.getString('ff_addressLine1Checkout') ?? _addressLine1Checkout;
    });
    _safeInit(() {
      _servicesNames =
          prefs.getStringList('ff_servicesNames') ?? _servicesNames;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cartServices = [];
  List<DocumentReference> get cartServices => _cartServices;
  set cartServices(List<DocumentReference> value) {
    _cartServices = value;
    prefs.setStringList('ff_cartServices', value.map((x) => x.path).toList());
  }

  void addToCartServices(DocumentReference value) {
    cartServices.add(value);
    prefs.setStringList(
        'ff_cartServices', _cartServices.map((x) => x.path).toList());
  }

  void removeFromCartServices(DocumentReference value) {
    cartServices.remove(value);
    prefs.setStringList(
        'ff_cartServices', _cartServices.map((x) => x.path).toList());
  }

  void removeAtIndexFromCartServices(int index) {
    cartServices.removeAt(index);
    prefs.setStringList(
        'ff_cartServices', _cartServices.map((x) => x.path).toList());
  }

  void updateCartServicesAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    cartServices[index] = updateFn(_cartServices[index]);
    prefs.setStringList(
        'ff_cartServices', _cartServices.map((x) => x.path).toList());
  }

  void insertAtIndexInCartServices(int index, DocumentReference value) {
    cartServices.insert(index, value);
    prefs.setStringList(
        'ff_cartServices', _cartServices.map((x) => x.path).toList());
  }

  List<double> _cartAmountPayable = [];
  List<double> get cartAmountPayable => _cartAmountPayable;
  set cartAmountPayable(List<double> value) {
    _cartAmountPayable = value;
    prefs.setStringList(
        'ff_cartAmountPayable', value.map((x) => x.toString()).toList());
  }

  void addToCartAmountPayable(double value) {
    cartAmountPayable.add(value);
    prefs.setStringList('ff_cartAmountPayable',
        _cartAmountPayable.map((x) => x.toString()).toList());
  }

  void removeFromCartAmountPayable(double value) {
    cartAmountPayable.remove(value);
    prefs.setStringList('ff_cartAmountPayable',
        _cartAmountPayable.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartAmountPayable(int index) {
    cartAmountPayable.removeAt(index);
    prefs.setStringList('ff_cartAmountPayable',
        _cartAmountPayable.map((x) => x.toString()).toList());
  }

  void updateCartAmountPayableAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartAmountPayable[index] = updateFn(_cartAmountPayable[index]);
    prefs.setStringList('ff_cartAmountPayable',
        _cartAmountPayable.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartAmountPayable(int index, double value) {
    cartAmountPayable.insert(index, value);
    prefs.setStringList('ff_cartAmountPayable',
        _cartAmountPayable.map((x) => x.toString()).toList());
  }

  List<double> _cartDiscount = [];
  List<double> get cartDiscount => _cartDiscount;
  set cartDiscount(List<double> value) {
    _cartDiscount = value;
    prefs.setStringList(
        'ff_cartDiscount', value.map((x) => x.toString()).toList());
  }

  void addToCartDiscount(double value) {
    cartDiscount.add(value);
    prefs.setStringList(
        'ff_cartDiscount', _cartDiscount.map((x) => x.toString()).toList());
  }

  void removeFromCartDiscount(double value) {
    cartDiscount.remove(value);
    prefs.setStringList(
        'ff_cartDiscount', _cartDiscount.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartDiscount(int index) {
    cartDiscount.removeAt(index);
    prefs.setStringList(
        'ff_cartDiscount', _cartDiscount.map((x) => x.toString()).toList());
  }

  void updateCartDiscountAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartDiscount[index] = updateFn(_cartDiscount[index]);
    prefs.setStringList(
        'ff_cartDiscount', _cartDiscount.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartDiscount(int index, double value) {
    cartDiscount.insert(index, value);
    prefs.setStringList(
        'ff_cartDiscount', _cartDiscount.map((x) => x.toString()).toList());
  }

  List<double> _cartTotal = [];
  List<double> get cartTotal => _cartTotal;
  set cartTotal(List<double> value) {
    _cartTotal = value;
    prefs.setStringList(
        'ff_cartTotal', value.map((x) => x.toString()).toList());
  }

  void addToCartTotal(double value) {
    cartTotal.add(value);
    prefs.setStringList(
        'ff_cartTotal', _cartTotal.map((x) => x.toString()).toList());
  }

  void removeFromCartTotal(double value) {
    cartTotal.remove(value);
    prefs.setStringList(
        'ff_cartTotal', _cartTotal.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCartTotal(int index) {
    cartTotal.removeAt(index);
    prefs.setStringList(
        'ff_cartTotal', _cartTotal.map((x) => x.toString()).toList());
  }

  void updateCartTotalAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    cartTotal[index] = updateFn(_cartTotal[index]);
    prefs.setStringList(
        'ff_cartTotal', _cartTotal.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCartTotal(int index, double value) {
    cartTotal.insert(index, value);
    prefs.setStringList(
        'ff_cartTotal', _cartTotal.map((x) => x.toString()).toList());
  }

  DocumentReference? _cartAddress;
  DocumentReference? get cartAddress => _cartAddress;
  set cartAddress(DocumentReference? value) {
    _cartAddress = value;
    value != null
        ? prefs.setString('ff_cartAddress', value.path)
        : prefs.remove('ff_cartAddress');
  }

  DocumentReference? _cartPet;
  DocumentReference? get cartPet => _cartPet;
  set cartPet(DocumentReference? value) {
    _cartPet = value;
    value != null
        ? prefs.setString('ff_cartPet', value.path)
        : prefs.remove('ff_cartPet');
  }

  String _cartOrderDateString = '';
  String get cartOrderDateString => _cartOrderDateString;
  set cartOrderDateString(String value) {
    _cartOrderDateString = value;
    prefs.setString('ff_cartOrderDateString', value);
  }

  String _cartOrderTimeSlot = '';
  String get cartOrderTimeSlot => _cartOrderTimeSlot;
  set cartOrderTimeSlot(String value) {
    _cartOrderTimeSlot = value;
    prefs.setString('ff_cartOrderTimeSlot', value);
  }

  String _petNameCheckout = '';
  String get petNameCheckout => _petNameCheckout;
  set petNameCheckout(String value) {
    _petNameCheckout = value;
    prefs.setString('ff_petNameCheckout', value);
  }

  String _addressLine1Checkout = '';
  String get addressLine1Checkout => _addressLine1Checkout;
  set addressLine1Checkout(String value) {
    _addressLine1Checkout = value;
    prefs.setString('ff_addressLine1Checkout', value);
  }

  List<String> _servicesNames = [];
  List<String> get servicesNames => _servicesNames;
  set servicesNames(List<String> value) {
    _servicesNames = value;
    prefs.setStringList('ff_servicesNames', value);
  }

  void addToServicesNames(String value) {
    servicesNames.add(value);
    prefs.setStringList('ff_servicesNames', _servicesNames);
  }

  void removeFromServicesNames(String value) {
    servicesNames.remove(value);
    prefs.setStringList('ff_servicesNames', _servicesNames);
  }

  void removeAtIndexFromServicesNames(int index) {
    servicesNames.removeAt(index);
    prefs.setStringList('ff_servicesNames', _servicesNames);
  }

  void updateServicesNamesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    servicesNames[index] = updateFn(_servicesNames[index]);
    prefs.setStringList('ff_servicesNames', _servicesNames);
  }

  void insertAtIndexInServicesNames(int index, String value) {
    servicesNames.insert(index, value);
    prefs.setStringList('ff_servicesNames', _servicesNames);
  }

  final _getVirtualConsultationServicesManager =
      StreamRequestManager<List<ServicesRecord>>();
  Stream<List<ServicesRecord>> getVirtualConsultationServices({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ServicesRecord>> Function() requestFn,
  }) =>
      _getVirtualConsultationServicesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetVirtualConsultationServicesCache() =>
      _getVirtualConsultationServicesManager.clear();
  void clearGetVirtualConsultationServicesCacheKey(String? uniqueKey) =>
      _getVirtualConsultationServicesManager.clearRequest(uniqueKey);

  final _getVaccinationServicesManager =
      StreamRequestManager<List<ServicesRecord>>();
  Stream<List<ServicesRecord>> getVaccinationServices({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ServicesRecord>> Function() requestFn,
  }) =>
      _getVaccinationServicesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetVaccinationServicesCache() =>
      _getVaccinationServicesManager.clear();
  void clearGetVaccinationServicesCacheKey(String? uniqueKey) =>
      _getVaccinationServicesManager.clearRequest(uniqueKey);

  final _getHomeVetServicesManager =
      StreamRequestManager<List<ServicesRecord>>();
  Stream<List<ServicesRecord>> getHomeVetServices({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Stream<List<ServicesRecord>> Function() requestFn,
  }) =>
      _getHomeVetServicesManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearGetHomeVetServicesCache() => _getHomeVetServicesManager.clear();
  void clearGetHomeVetServicesCacheKey(String? uniqueKey) =>
      _getHomeVetServicesManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
