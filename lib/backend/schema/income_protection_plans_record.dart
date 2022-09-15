import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'income_protection_plans_record.g.dart';

abstract class IncomeProtectionPlansRecord
    implements
        Built<IncomeProtectionPlansRecord, IncomeProtectionPlansRecordBuilder> {
  static Serializer<IncomeProtectionPlansRecord> get serializer =>
      _$incomeProtectionPlansRecordSerializer;

  @BuiltValueField(wireName: 'plan_id')
  String? get planId;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'max_payout')
  String? get maxPayout;

  String? get interval;

  @BuiltValueField(wireName: 'monthly_payment')
  String? get monthlyPayment;

  @BuiltValueField(wireName: 'ipi_id')
  String? get ipiId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IncomeProtectionPlansRecordBuilder builder) =>
      builder
        ..planId = ''
        ..productId = ''
        ..maxPayout = ''
        ..interval = ''
        ..monthlyPayment = ''
        ..ipiId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('income_protection_plans');

  static Stream<IncomeProtectionPlansRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IncomeProtectionPlansRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IncomeProtectionPlansRecord._();
  factory IncomeProtectionPlansRecord(
          [void Function(IncomeProtectionPlansRecordBuilder) updates]) =
      _$IncomeProtectionPlansRecord;

  static IncomeProtectionPlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIncomeProtectionPlansRecordData({
  String? planId,
  String? productId,
  String? maxPayout,
  String? interval,
  String? monthlyPayment,
  String? ipiId,
}) {
  final firestoreData = serializers.toFirestore(
    IncomeProtectionPlansRecord.serializer,
    IncomeProtectionPlansRecord(
      (i) => i
        ..planId = planId
        ..productId = productId
        ..maxPayout = maxPayout
        ..interval = interval
        ..monthlyPayment = monthlyPayment
        ..ipiId = ipiId,
    ),
  );

  return firestoreData;
}
