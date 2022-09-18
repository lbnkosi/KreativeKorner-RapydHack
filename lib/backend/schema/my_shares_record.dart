import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'my_shares_record.g.dart';

abstract class MySharesRecord
    implements Built<MySharesRecord, MySharesRecordBuilder> {
  static Serializer<MySharesRecord> get serializer =>
      _$mySharesRecordSerializer;

  @BuiltValueField(wireName: 'platform_link')
  String? get platformLink;

  @BuiltValueField(wireName: 'share_amount')
  String? get shareAmount;

  @BuiltValueField(wireName: 'share_count')
  String? get shareCount;

  @BuiltValueField(wireName: 'share_dividends')
  String? get shareDividends;

  @BuiltValueField(wireName: 'share_id')
  String? get shareId;

  @BuiltValueField(wireName: 'share_name')
  String? get shareName;

  @BuiltValueField(wireName: 'share_platform')
  String? get sharePlatform;

  @BuiltValueField(wireName: 'image_path')
  String? get imagePath;

  String? get name;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(MySharesRecordBuilder builder) => builder
    ..platformLink = ''
    ..shareAmount = ''
    ..shareCount = ''
    ..shareDividends = ''
    ..shareId = ''
    ..shareName = ''
    ..sharePlatform = ''
    ..imagePath = ''
    ..name = ''
    ..description = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('my_shares')
          : FirebaseFirestore.instance.collectionGroup('my_shares');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('my_shares').doc();

  static Stream<MySharesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MySharesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MySharesRecord._();
  factory MySharesRecord([void Function(MySharesRecordBuilder) updates]) =
      _$MySharesRecord;

  static MySharesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMySharesRecordData({
  String? platformLink,
  String? shareAmount,
  String? shareCount,
  String? shareDividends,
  String? shareId,
  String? shareName,
  String? sharePlatform,
  String? imagePath,
  String? name,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    MySharesRecord.serializer,
    MySharesRecord(
      (m) => m
        ..platformLink = platformLink
        ..shareAmount = shareAmount
        ..shareCount = shareCount
        ..shareDividends = shareDividends
        ..shareId = shareId
        ..shareName = shareName
        ..sharePlatform = sharePlatform
        ..imagePath = imagePath
        ..name = name
        ..description = description,
    ),
  );

  return firestoreData;
}
