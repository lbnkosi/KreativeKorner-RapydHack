import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'checkout_record.g.dart';

abstract class CheckoutRecord
    implements Built<CheckoutRecord, CheckoutRecordBuilder> {
  static Serializer<CheckoutRecord> get serializer =>
      _$checkoutRecordSerializer;

  @BuiltValueField(wireName: 'checkout_id')
  String? get checkoutId;

  @BuiltValueField(wireName: 'checkout_url')
  String? get checkoutUrl;

  String? get price;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'checkout_type')
  String? get checkoutType;

  @BuiltValueField(wireName: 'merchant_reference_id')
  String? get merchantReferenceId;

  bool? get paid;

  @BuiltValueField(wireName: 'customer_id')
  String? get customerId;

  String? get email;

  @BuiltValueField(wireName: 'user_type')
  String? get userType;

  @BuiltValueField(wireName: 'collection_name')
  String? get collectionName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(CheckoutRecordBuilder builder) => builder
    ..checkoutId = ''
    ..checkoutUrl = ''
    ..price = ''
    ..productId = ''
    ..checkoutType = ''
    ..merchantReferenceId = ''
    ..paid = false
    ..customerId = ''
    ..email = ''
    ..userType = ''
    ..collectionName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('checkout')
          : FirebaseFirestore.instance.collectionGroup('checkout');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('checkout').doc();

  static Stream<CheckoutRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CheckoutRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CheckoutRecord._();
  factory CheckoutRecord([void Function(CheckoutRecordBuilder) updates]) =
      _$CheckoutRecord;

  static CheckoutRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCheckoutRecordData({
  String? checkoutId,
  String? checkoutUrl,
  String? price,
  String? productId,
  String? checkoutType,
  String? merchantReferenceId,
  bool? paid,
  String? customerId,
  String? email,
  String? userType,
  String? collectionName,
}) {
  final firestoreData = serializers.toFirestore(
    CheckoutRecord.serializer,
    CheckoutRecord(
      (c) => c
        ..checkoutId = checkoutId
        ..checkoutUrl = checkoutUrl
        ..price = price
        ..productId = productId
        ..checkoutType = checkoutType
        ..merchantReferenceId = merchantReferenceId
        ..paid = paid
        ..customerId = customerId
        ..email = email
        ..userType = userType
        ..collectionName = collectionName,
    ),
  );

  return firestoreData;
}
