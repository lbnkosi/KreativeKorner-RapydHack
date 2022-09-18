import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rapyd_embed_checkout_record.g.dart';

abstract class RapydEmbedCheckoutRecord
    implements
        Built<RapydEmbedCheckoutRecord, RapydEmbedCheckoutRecordBuilder> {
  static Serializer<RapydEmbedCheckoutRecord> get serializer =>
      _$rapydEmbedCheckoutRecordSerializer;

  bool? get bnpl;

  @BuiltValueField(wireName: 'extended_warranty')
  bool? get extendedWarranty;

  @BuiltValueField(wireName: 'health_cover')
  bool? get healthCover;

  @BuiltValueField(wireName: 'shipping_insurance')
  bool? get shippingInsurance;

  @BuiltValueField(wireName: 'sim_service')
  bool? get simService;

  @BuiltValueField(wireName: 'travel_card')
  bool? get travelCard;

  @BuiltValueField(wireName: 'travel_insurance')
  bool? get travelInsurance;

  @BuiltValueField(wireName: 'country_filter')
  String? get countryFilter;

  @BuiltValueField(wireName: 'checkout_id')
  String? get checkoutId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RapydEmbedCheckoutRecordBuilder builder) =>
      builder
        ..bnpl = false
        ..extendedWarranty = false
        ..healthCover = false
        ..shippingInsurance = false
        ..simService = false
        ..travelCard = false
        ..travelInsurance = false
        ..countryFilter = ''
        ..checkoutId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rapyd_embed_checkout');

  static Stream<RapydEmbedCheckoutRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RapydEmbedCheckoutRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RapydEmbedCheckoutRecord._();
  factory RapydEmbedCheckoutRecord(
          [void Function(RapydEmbedCheckoutRecordBuilder) updates]) =
      _$RapydEmbedCheckoutRecord;

  static RapydEmbedCheckoutRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRapydEmbedCheckoutRecordData({
  bool? bnpl,
  bool? extendedWarranty,
  bool? healthCover,
  bool? shippingInsurance,
  bool? simService,
  bool? travelCard,
  bool? travelInsurance,
  String? countryFilter,
  String? checkoutId,
}) {
  final firestoreData = serializers.toFirestore(
    RapydEmbedCheckoutRecord.serializer,
    RapydEmbedCheckoutRecord(
      (r) => r
        ..bnpl = bnpl
        ..extendedWarranty = extendedWarranty
        ..healthCover = healthCover
        ..shippingInsurance = shippingInsurance
        ..simService = simService
        ..travelCard = travelCard
        ..travelInsurance = travelInsurance
        ..countryFilter = countryFilter
        ..checkoutId = checkoutId,
    ),
  );

  return firestoreData;
}
