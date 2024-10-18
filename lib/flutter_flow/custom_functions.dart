import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

double? priceSummary(List<double>? allPrices) {
  if (allPrices == null || allPrices.isEmpty) {
    return null;
  }

  double sum = 0.0;
  for (double price in allPrices) {
    sum += price;
  }

  return sum;
}

List<String>? nextFiveDays() {
  DateTime now = DateTime.now();
  List<String> nextFiveDays = [];
  for (int i = 1; i <= 5; i++) {
    DateTime nextDay = now.add(Duration(days: i));
    String formattedDate = DateFormat('dd MMM yyyy').format(nextDay);
    nextFiveDays.add(formattedDate);
  }
  return nextFiveDays;
}

int? priceSummaryInteger(List<double>? allPrices) {
  if (allPrices == null || allPrices.isEmpty) {
    return null;
  }

  int sum = 0;
  for (double price in allPrices) {
    sum += price as int;
  }

  return sum;
}

DateTime? getDateTimeFromFormattedString(String? formattedDate) {
  DateTime now = DateTime.now();
  for (int i = 1; i <= 5; i++) {
    DateTime nextDay = now.add(Duration(days: i));
    // Format the next day for comparison
    String formattedNextDay = DateFormat('dd MMM yyyy').format(nextDay);
    if (formattedNextDay == formattedDate) {
      return nextDay; // Return DateTime if it matches
    }
  }

  return null; // Return null if no match is found
}

bool checkAllServicesOnline(List<String>? listOfServices) {
  // Set of online service document references
  // final Set<String> onlineServices = {
  //   '/services/a5Yy5I8DwlWPNzZh4cO7',
  //   '/services/EUJaV1P6NbwP3oRLyruT',
  //   '/services/01xgii9LPvUFPrGgn3UO',
  //   '/services/84Xz4OXOGRi0yGjGVIfR'
  // };

  final Set<String> onlineServices = {
    'Behavioral Consultation',
    'Video Call with Vet',
    'Voice Call with Vet',
    'Nutritional Consultation'
  };

  // Check if listOfServices is null
  if (listOfServices == null) {
    return false;
  }

  // Iterate through the list of services in the cart
  for (var service in listOfServices) {
    // If any service is not in the onlineServices Set, return false
    if (!onlineServices.contains(service)) {
      return false;
    }
  }

  // If all services are online, return true
  return true;
}
