import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'issued_rewards_record.g.dart';

abstract class IssuedRewardsRecord
    implements Built<IssuedRewardsRecord, IssuedRewardsRecordBuilder> {
  static Serializer<IssuedRewardsRecord> get serializer =>
      _$issuedRewardsRecordSerializer;

  @BuiltValueField(wireName: 'reward_id')
  String? get rewardId;

  String? get user;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IssuedRewardsRecordBuilder builder) => builder
    ..rewardId = ''
    ..user = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('issued_rewards');

  static Stream<IssuedRewardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IssuedRewardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IssuedRewardsRecord._();
  factory IssuedRewardsRecord(
          [void Function(IssuedRewardsRecordBuilder) updates]) =
      _$IssuedRewardsRecord;

  static IssuedRewardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIssuedRewardsRecordData({
  String? rewardId,
  String? user,
}) {
  final firestoreData = serializers.toFirestore(
    IssuedRewardsRecord.serializer,
    IssuedRewardsRecord(
      (i) => i
        ..rewardId = rewardId
        ..user = user,
    ),
  );

  return firestoreData;
}
