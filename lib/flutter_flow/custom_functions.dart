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

int? functionOfComparison(
  double num1,
  double num2,
) {
  if (num1 > num2) {
    return 1;
  } else if (num1 < num2) {
    return 2;
  } else if (num1 == num2) {
    return 1;
  }
}
