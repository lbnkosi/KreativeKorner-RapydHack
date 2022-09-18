import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rapyd_embed_services_record.g.dart';

abstract class RapydEmbedServicesRecord
    implements
        Built<RapydEmbedServicesRecord, RapydEmbedServicesRecordBuilder> {
  static Serializer<RapydEmbedServicesRecord> get serializer =>
      _$rapydEmbedServicesRecordSerializer;

  String? get category;

  String? get country;

  String? get currency;

  String? get description;

  @BuiltValueField(wireName: 'is_single_payment')
  bool? get isSinglePayment;

  String? get name;

  BuiltList<String>? get partners;

  int? get price;

  @BuiltValueField(wireName: 'sub_category')
  String? get subCategory;

  int? get term;

  @BuiltValueField(wireName: 'service_id')
  String? get serviceId;

  bool? get interntional;

  @BuiltValueField(wireName: 'currency_symbol')
  String? get currencySymbol;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RapydEmbedServicesRecordBuilder builder) =>
      builder
        ..category = ''
        ..country = ''
        ..currency = ''
        ..description = ''
        ..isSinglePayment = false
        ..name = ''
        ..partners = ListBuilder()
        ..price = 0
        ..subCategory = ''
        ..term = 0
        ..serviceId = ''
        ..interntional = false
        ..currencySymbol = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rapyd_embed_services');

  static Stream<RapydEmbedServicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RapydEmbedServicesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RapydEmbedServicesRecord._();
  factory RapydEmbedServicesRecord(
          [void Function(RapydEmbedServicesRecordBuilder) updates]) =
      _$RapydEmbedServicesRecord;

  static RapydEmbedServicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRapydEmbedServicesRecordData({
  String? category,
  String? country,
  String? currency,
  String? description,
  bool? isSinglePayment,
  String? name,
  int? price,
  String? subCategory,
  int? term,
  String? serviceId,
  bool? interntional,
  String? currencySymbol,
}) {
  final firestoreData = serializers.toFirestore(
    RapydEmbedServicesRecord.serializer,
    RapydEmbedServicesRecord(
      (r) => r
        ..category = category
        ..country = country
        ..currency = currency
        ..description = description
        ..isSinglePayment = isSinglePayment
        ..name = name
        ..partners = null
        ..price = price
        ..subCategory = subCategory
        ..term = term
        ..serviceId = serviceId
        ..interntional = interntional
        ..currencySymbol = currencySymbol,
    ),
  );

  return firestoreData;
}
