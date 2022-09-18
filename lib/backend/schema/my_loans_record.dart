import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_loans_record.g.dart';

abstract class MyLoansRecord
    implements Built<MyLoansRecord, MyLoansRecordBuilder> {
  static Serializer<MyLoansRecord> get serializer => _$myLoansRecordSerializer;

  String? get amount;

  @BuiltValueField(wireName: 'amount_payable')
  String? get amountPayable;

  @BuiltValueField(wireName: 'beneficiary_id')
  String? get beneficiaryId;

  @BuiltValueField(wireName: 'billing_cycle')
  String? get billingCycle;

  @BuiltValueField(wireName: 'collect_card_id')
  String? get collectCardId;

  @BuiltValueField(wireName: 'disburse_account_number')
  String? get disburseAccountNumber;

  @BuiltValueField(wireName: 'disburse_payout_id')
  String? get disbursePayoutId;

  String? get id;

  @BuiltValueField(wireName: 'interest_percentage')
  String? get interestPercentage;

  @BuiltValueField(wireName: 'invoice_id')
  String? get invoiceId;

  @BuiltValueField(wireName: 'monthly_payment')
  String? get monthlyPayment;

  String? get months;

  @BuiltValueField(wireName: 'plan_id')
  String? get planId;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'sender_id')
  String? get senderId;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyLoansRecordBuilder builder) => builder
    ..amount = ''
    ..amountPayable = ''
    ..beneficiaryId = ''
    ..billingCycle = ''
    ..collectCardId = ''
    ..disburseAccountNumber = ''
    ..disbursePayoutId = ''
    ..id = ''
    ..interestPercentage = ''
    ..invoiceId = ''
    ..monthlyPayment = ''
    ..months = ''
    ..planId = ''
    ..productId = ''
    ..senderId = ''
    ..status = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_loans')
          : FirebaseFirestore.instance.collectionGroup('my_loans');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('my_loans').doc();

  static Stream<MyLoansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyLoansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyLoansRecord._();
  factory MyLoansRecord([void Function(MyLoansRecordBuilder) updates]) =
      _$MyLoansRecord;

  static MyLoansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyLoansRecordData({
  String? amount,
  String? amountPayable,
  String? beneficiaryId,
  String? billingCycle,
  String? collectCardId,
  String? disburseAccountNumber,
  String? disbursePayoutId,
  String? id,
  String? interestPercentage,
  String? invoiceId,
  String? monthlyPayment,
  String? months,
  String? planId,
  String? productId,
  String? senderId,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    MyLoansRecord.serializer,
    MyLoansRecord(
      (m) => m
        ..amount = amount
        ..amountPayable = amountPayable
        ..beneficiaryId = beneficiaryId
        ..billingCycle = billingCycle
        ..collectCardId = collectCardId
        ..disburseAccountNumber = disburseAccountNumber
        ..disbursePayoutId = disbursePayoutId
        ..id = id
        ..interestPercentage = interestPercentage
        ..invoiceId = invoiceId
        ..monthlyPayment = monthlyPayment
        ..months = months
        ..planId = planId
        ..productId = productId
        ..senderId = senderId
        ..status = status,
    ),
  );

  return firestoreData;
}
