import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rewards_record.g.dart';

abstract class RewardsRecord
    implements Built<RewardsRecord, RewardsRecordBuilder> {
  static Serializer<RewardsRecord> get serializer => _$rewardsRecordSerializer;

  @BuiltValueField(wireName: 'max_redemptions')
  String? get maxRedemptions;

  @BuiltValueField(wireName: 'amount_off')
  String? get amountOff;

  @BuiltValueField(wireName: 'coupon_id')
  String? get couponId;

  String? get duration;

  String? get id;

  String? get title;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RewardsRecordBuilder builder) => builder
    ..maxRedemptions = ''
    ..amountOff = ''
    ..couponId = ''
    ..duration = ''
    ..id = ''
    ..title = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rewards');

  static Stream<RewardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RewardsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RewardsRecord._();
  factory RewardsRecord([void Function(RewardsRecordBuilder) updates]) =
      _$RewardsRecord;

  static RewardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRewardsRecordData({
  String? maxRedemptions,
  String? amountOff,
  String? couponId,
  String? duration,
  String? id,
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    RewardsRecord.serializer,
    RewardsRecord(
      (r) => r
        ..maxRedemptions = maxRedemptions
        ..amountOff = amountOff
        ..couponId = couponId
        ..duration = duration
        ..id = id
        ..title = title,
    ),
  );

  return firestoreData;
}
