import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'official_spot_record.g.dart';

abstract class OfficialSpotRecord
    implements Built<OfficialSpotRecord, OfficialSpotRecordBuilder> {
  static Serializer<OfficialSpotRecord> get serializer =>
      _$officialSpotRecordSerializer;

  @BuiltValueField(wireName: 'Date')
  DateTime? get date;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OfficialSpotRecordBuilder builder) =>
      builder..price = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Official_spot');

  static Stream<OfficialSpotRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OfficialSpotRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OfficialSpotRecord._();
  factory OfficialSpotRecord(
          [void Function(OfficialSpotRecordBuilder) updates]) =
      _$OfficialSpotRecord;

  static OfficialSpotRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOfficialSpotRecordData({
  DateTime? date,
  double? price,
}) {
  final firestoreData = serializers.toFirestore(
    OfficialSpotRecord.serializer,
    OfficialSpotRecord(
      (o) => o
        ..date = date
        ..price = price,
    ),
  );

  return firestoreData;
}
