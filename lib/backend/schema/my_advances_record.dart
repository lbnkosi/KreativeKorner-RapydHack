import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_advances_record.g.dart';

abstract class MyAdvancesRecord
    implements Built<MyAdvancesRecord, MyAdvancesRecordBuilder> {
  static Serializer<MyAdvancesRecord> get serializer =>
      _$myAdvancesRecordSerializer;

  String? get amount;

  @BuiltValueField(wireName: 'amount_payable')
  String? get amountPayable;

  @BuiltValueField(wireName: 'beneficiary_id')
  String? get beneficiaryId;

  @BuiltValueField(wireName: 'billing_cycle')
  String? get billingCycle;

  @BuiltValueField(wireName: 'interest_percentage')
  String? get interestPercentage;

  @BuiltValueField(wireName: 'invoice_id')
  String? get invoiceId;

  @BuiltValueField(wireName: 'sender_id')
  String? get senderId;

  @BuiltValueField(wireName: 'collect_card_number')
  String? get collectCardNumber;

  @BuiltValueField(wireName: 'collect_card_id')
  String? get collectCardId;

  @BuiltValueField(wireName: 'disburse_account_number')
  String? get disburseAccountNumber;

  @BuiltValueField(wireName: 'disburse_payout_id')
  String? get disbursePayoutId;

  bool? get status;

  @BuiltValueField(wireName: 'single_collection')
  bool? get singleCollection;

  String? get months;

  @BuiltValueField(wireName: 'monthly_payment')
  String? get monthlyPayment;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyAdvancesRecordBuilder builder) => builder
    ..amount = ''
    ..amountPayable = ''
    ..beneficiaryId = ''
    ..billingCycle = ''
    ..interestPercentage = ''
    ..invoiceId = ''
    ..senderId = ''
    ..collectCardNumber = ''
    ..collectCardId = ''
    ..disburseAccountNumber = ''
    ..disbursePayoutId = ''
    ..status = false
    ..singleCollection = false
    ..months = ''
    ..monthlyPayment = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_advances')
          : FirebaseFirestore.instance.collectionGroup('my_advances');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('my_advances').doc();

  static Stream<MyAdvancesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyAdvancesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyAdvancesRecord._();
  factory MyAdvancesRecord([void Function(MyAdvancesRecordBuilder) updates]) =
      _$MyAdvancesRecord;

  static MyAdvancesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyAdvancesRecordData({
  String? amount,
  String? amountPayable,
  String? beneficiaryId,
  String? billingCycle,
  String? interestPercentage,
  String? invoiceId,
  String? senderId,
  String? collectCardNumber,
  String? collectCardId,
  String? disburseAccountNumber,
  String? disbursePayoutId,
  bool? status,
  bool? singleCollection,
  String? months,
  String? monthlyPayment,
}) {
  final firestoreData = serializers.toFirestore(
    MyAdvancesRecord.serializer,
    MyAdvancesRecord(
      (m) => m
        ..amount = amount
        ..amountPayable = amountPayable
        ..beneficiaryId = beneficiaryId
        ..billingCycle = billingCycle
        ..interestPercentage = interestPercentage
        ..invoiceId = invoiceId
        ..senderId = senderId
        ..collectCardNumber = collectCardNumber
        ..collectCardId = collectCardId
        ..disburseAccountNumber = disburseAccountNumber
        ..disbursePayoutId = disbursePayoutId
        ..status = status
        ..singleCollection = singleCollection
        ..months = months
        ..monthlyPayment = monthlyPayment,
    ),
  );

  return firestoreData;
}
