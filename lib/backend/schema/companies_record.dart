import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'companies_record.g.dart';

abstract class CompaniesRecord
    implements Built<CompaniesRecord, CompaniesRecordBuilder> {
  static Serializer<CompaniesRecord> get serializer =>
      _$companiesRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Area')
  String? get area;

  @BuiltValueField(wireName: 'Prices')
  BuiltList<DocumentReference>? get prices;

  @BuiltValueField(wireName: 'DateForSorting')
  DateTime? get dateForSorting;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompaniesRecordBuilder builder) => builder
    ..name = ''
    ..area = ''
    ..prices = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Companies');

  static Stream<CompaniesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompaniesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompaniesRecord._();
  factory CompaniesRecord([void Function(CompaniesRecordBuilder) updates]) =
      _$CompaniesRecord;

  static CompaniesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompaniesRecordData({
  String? name,
  String? area,
  DateTime? dateForSorting,
}) {
  final firestoreData = serializers.toFirestore(
    CompaniesRecord.serializer,
    CompaniesRecord(
      (c) => c
        ..name = name
        ..area = area
        ..prices = null
        ..dateForSorting = dateForSorting,
    ),
  );

  return firestoreData;
}
