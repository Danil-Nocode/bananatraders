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
