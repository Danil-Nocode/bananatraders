import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int? functionOfComparison(List<AreasDaysRecord>? listValues) {
  if (listValues == null) {
    return 1;
  }

  var num1 = listValues[0].avg; // current
  var num2 = listValues[1].avg; // last

  if (num1! > num2!) {
    return 0; // increase
  } else if (num1 < num2) {
    return 2; // decrease
  } else if (num1 == num2) {
    return 1; // equal
  }
}

DateTime? addDay(DateTime? currentTime) {
  var newDate = currentTime!.add(Duration(days: 1));
  return newDate;
}

int weekByDates(DateTime dateCurrent) {
  // Current date and time of system
  String date = dateCurrent.toString();

// This will generate the time and date for first day of month
  String firstDay = date.substring(0, 8) + '01' + date.substring(10);

// week day for the first day of the month
  int weekDay = DateTime.parse(firstDay).weekday;

  DateTime testDate = DateTime.now();

  int weekOfMonth;

// //  If your calender starts from Monday
//   weekDay--;
//   weekOfMonth = ((testDate.day + weekDay) / 7).ceil();
//   print('Week of the month: $weekOfMonth');
//   weekDay++;

// If your calender starts from sunday
  if (weekDay == 7) {
    weekDay = 0;
  }
  weekOfMonth = ((testDate.day + weekDay) / 7).ceil();
  return weekOfMonth;
}
