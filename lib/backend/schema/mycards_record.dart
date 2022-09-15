import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mycards_record.g.dart';

abstract class MycardsRecord
    implements Built<MycardsRecord, MycardsRecordBuilder> {
  static Serializer<MycardsRecord> get serializer => _$mycardsRecordSerializer;

  String? get type;

  @BuiltValueField(wireName: 'card_number')
  String? get cardNumber;

  @BuiltValueField(wireName: 'expiration_month')
  String? get expirationMonth;

  @BuiltValueField(wireName: 'expiration_year')
  String? get expirationYear;

  @BuiltValueField(wireName: 'card_holder')
  String? get cardHolder;

  String? get cvv;

  String? get customerId;

  String? get logo;

  @BuiltValueField(wireName: 'card_id')
  String? get cardId;

  String? get category;

  String? get last4;

  @BuiltValueField(wireName: 'fingerprint_token')
  String? get fingerprintToken;

  @BuiltValueField(wireName: 'ewallet_id')
  String? get ewalletId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MycardsRecordBuilder builder) => builder
    ..type = ''
    ..cardNumber = ''
    ..expirationMonth = ''
    ..expirationYear = ''
    ..cardHolder = ''
    ..cvv = ''
    ..customerId = ''
    ..logo = ''
    ..cardId = ''
    ..category = ''
    ..last4 = ''
    ..fingerprintToken = ''
    ..ewalletId = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('mycards')
          : FirebaseFirestore.instance.collectionGroup('mycards');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('mycards').doc();

  static Stream<MycardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MycardsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MycardsRecord._();
  factory MycardsRecord([void Function(MycardsRecordBuilder) updates]) =
      _$MycardsRecord;

  static MycardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMycardsRecordData({
  String? type,
  String? cardNumber,
  String? expirationMonth,
  String? expirationYear,
  String? cardHolder,
  String? cvv,
  String? customerId,
  String? logo,
  String? cardId,
  String? category,
  String? last4,
  String? fingerprintToken,
  String? ewalletId,
}) {
  final firestoreData = serializers.toFirestore(
    MycardsRecord.serializer,
    MycardsRecord(
      (m) => m
        ..type = type
        ..cardNumber = cardNumber
        ..expirationMonth = expirationMonth
        ..expirationYear = expirationYear
        ..cardHolder = cardHolder
        ..cvv = cvv
        ..customerId = customerId
        ..logo = logo
        ..cardId = cardId
        ..category = category
        ..last4 = last4
        ..fingerprintToken = fingerprintToken
        ..ewalletId = ewalletId,
    ),
  );

  return firestoreData;
}
