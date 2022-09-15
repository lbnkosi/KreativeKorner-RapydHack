import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'beneficiaries_record.g.dart';

abstract class BeneficiariesRecord
    implements Built<BeneficiariesRecord, BeneficiariesRecordBuilder> {
  static Serializer<BeneficiariesRecord> get serializer =>
      _$beneficiariesRecordSerializer;

  @BuiltValueField(wireName: 'account_number')
  String? get accountNumber;

  String? get country;

  String? get currency;

  String? get id;

  String? get name;

  String? get surname;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(BeneficiariesRecordBuilder builder) => builder
    ..accountNumber = ''
    ..country = ''
    ..currency = ''
    ..id = ''
    ..name = ''
    ..surname = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('beneficiaries')
          : FirebaseFirestore.instance.collectionGroup('beneficiaries');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('beneficiaries').doc();

  static Stream<BeneficiariesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BeneficiariesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BeneficiariesRecord._();
  factory BeneficiariesRecord(
          [void Function(BeneficiariesRecordBuilder) updates]) =
      _$BeneficiariesRecord;

  static BeneficiariesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBeneficiariesRecordData({
  String? accountNumber,
  String? country,
  String? currency,
  String? id,
  String? name,
  String? surname,
}) {
  final firestoreData = serializers.toFirestore(
    BeneficiariesRecord.serializer,
    BeneficiariesRecord(
      (b) => b
        ..accountNumber = accountNumber
        ..country = country
        ..currency = currency
        ..id = id
        ..name = name
        ..surname = surname,
    ),
  );

  return firestoreData;
}
