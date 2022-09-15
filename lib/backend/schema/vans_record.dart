import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vans_record.g.dart';

abstract class VansRecord implements Built<VansRecord, VansRecordBuilder> {
  static Serializer<VansRecord> get serializer => _$vansRecordSerializer;

  String? get id;

  @BuiltValueField(wireName: 'merchant_reference_id')
  String? get merchantReferenceId;

  String? get ewallet;

  @BuiltValueField(wireName: 'beneficiary_name')
  String? get beneficiaryName;

  String? get address;

  @BuiltValueField(wireName: 'country_iso')
  String? get countryIso;

  String? get country;

  @BuiltValueField(wireName: 'aba_routing_number')
  String? get abaRoutingNumber;

  @BuiltValueField(wireName: 'account_number')
  String? get accountNumber;

  String? get status;

  String? get description;

  @BuiltValueField(wireName: 'funding_instructions')
  String? get fundingInstructions;

  String? get currency;

  String? get iban;

  @BuiltValueField(wireName: 'sort_code')
  String? get sortCode;

  String? get bic;

  @BuiltValueField(wireName: 'account_no')
  String? get accountNo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(VansRecordBuilder builder) => builder
    ..id = ''
    ..merchantReferenceId = ''
    ..ewallet = ''
    ..beneficiaryName = ''
    ..address = ''
    ..countryIso = ''
    ..country = ''
    ..abaRoutingNumber = ''
    ..accountNumber = ''
    ..status = ''
    ..description = ''
    ..fundingInstructions = ''
    ..currency = ''
    ..iban = ''
    ..sortCode = ''
    ..bic = ''
    ..accountNo = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('vans')
          : FirebaseFirestore.instance.collectionGroup('vans');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('vans').doc();

  static Stream<VansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VansRecord._();
  factory VansRecord([void Function(VansRecordBuilder) updates]) = _$VansRecord;

  static VansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVansRecordData({
  String? id,
  String? merchantReferenceId,
  String? ewallet,
  String? beneficiaryName,
  String? address,
  String? countryIso,
  String? country,
  String? abaRoutingNumber,
  String? accountNumber,
  String? status,
  String? description,
  String? fundingInstructions,
  String? currency,
  String? iban,
  String? sortCode,
  String? bic,
  String? accountNo,
}) {
  final firestoreData = serializers.toFirestore(
    VansRecord.serializer,
    VansRecord(
      (v) => v
        ..id = id
        ..merchantReferenceId = merchantReferenceId
        ..ewallet = ewallet
        ..beneficiaryName = beneficiaryName
        ..address = address
        ..countryIso = countryIso
        ..country = country
        ..abaRoutingNumber = abaRoutingNumber
        ..accountNumber = accountNumber
        ..status = status
        ..description = description
        ..fundingInstructions = fundingInstructions
        ..currency = currency
        ..iban = iban
        ..sortCode = sortCode
        ..bic = bic
        ..accountNo = accountNo,
    ),
  );

  return firestoreData;
}
