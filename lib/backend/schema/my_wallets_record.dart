import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_wallets_record.g.dart';

abstract class MyWalletsRecord
    implements Built<MyWalletsRecord, MyWalletsRecordBuilder> {
  static Serializer<MyWalletsRecord> get serializer =>
      _$myWalletsRecordSerializer;

  @BuiltValueField(wireName: 'wallet_amount')
  int? get walletAmount;

  int? get holder;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MyWalletsRecordBuilder builder) => builder
    ..walletAmount = 0
    ..holder = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_wallets')
          : FirebaseFirestore.instance.collectionGroup('my_wallets');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('my_wallets').doc();

  static Stream<MyWalletsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MyWalletsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MyWalletsRecord._();
  factory MyWalletsRecord([void Function(MyWalletsRecordBuilder) updates]) =
      _$MyWalletsRecord;

  static MyWalletsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMyWalletsRecordData({
  int? walletAmount,
  int? holder,
}) {
  final firestoreData = serializers.toFirestore(
    MyWalletsRecord.serializer,
    MyWalletsRecord(
      (m) => m
        ..walletAmount = walletAmount
        ..holder = holder,
    ),
  );

  return firestoreData;
}
