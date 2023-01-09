import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'company_prices_days_record.g.dart';

abstract class CompanyPricesDaysRecord
    implements Built<CompanyPricesDaysRecord, CompanyPricesDaysRecordBuilder> {
  static Serializer<CompanyPricesDaysRecord> get serializer =>
      _$companyPricesDaysRecordSerializer;

  @BuiltValueField(wireName: 'Number_of_week')
  int? get numberOfWeek;

  @BuiltValueField(wireName: 'Data')
  DateTime? get data;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: 'Company')
  DocumentReference? get company;

  @BuiltValueField(wireName: 'Day_of_week')
  int? get dayOfWeek;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompanyPricesDaysRecordBuilder builder) =>
      builder
        ..numberOfWeek = 0
        ..price = 0.0
        ..dayOfWeek = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Company_prices_days');

  static Stream<CompanyPricesDaysRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompanyPricesDaysRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompanyPricesDaysRecord._();
  factory CompanyPricesDaysRecord(
          [void Function(CompanyPricesDaysRecordBuilder) updates]) =
      _$CompanyPricesDaysRecord;

  static CompanyPricesDaysRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompanyPricesDaysRecordData({
  int? numberOfWeek,
  DateTime? data,
  double? price,
  DocumentReference? company,
  int? dayOfWeek,
}) {
  final firestoreData = serializers.toFirestore(
    CompanyPricesDaysRecord.serializer,
    CompanyPricesDaysRecord(
      (c) => c
        ..numberOfWeek = numberOfWeek
        ..data = data
        ..price = price
        ..company = company
        ..dayOfWeek = dayOfWeek,
    ),
  );

  return firestoreData;
}
