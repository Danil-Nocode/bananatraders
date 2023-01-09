import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_prices_week_record.g.dart';

abstract class CompanyPricesWeekRecord
    implements Built<CompanyPricesWeekRecord, CompanyPricesWeekRecordBuilder> {
  static Serializer<CompanyPricesWeekRecord> get serializer =>
      _$companyPricesWeekRecordSerializer;

  @BuiltValueField(wireName: 'Number_of_week')
  String? get numberOfWeek;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: 'Company')
  DocumentReference? get company;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyPricesWeekRecordBuilder builder) =>
      builder
        ..numberOfWeek = ''
        ..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Company_prices_week');

  static Stream<CompanyPricesWeekRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyPricesWeekRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyPricesWeekRecord._();
  factory CompanyPricesWeekRecord(
          [void Function(CompanyPricesWeekRecordBuilder) updates]) =
      _$CompanyPricesWeekRecord;

  static CompanyPricesWeekRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyPricesWeekRecordData({
  String? numberOfWeek,
  double? price,
  DocumentReference? company,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyPricesWeekRecord.serializer,
    CompanyPricesWeekRecord(
      (c) => c
        ..numberOfWeek = numberOfWeek
        ..price = price
        ..company = company,
    ),
  );

  return firestoreData;
}
