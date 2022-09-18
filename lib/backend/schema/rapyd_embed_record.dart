import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rapyd_embed_record.g.dart';

abstract class RapydEmbedRecord
    implements Built<RapydEmbedRecord, RapydEmbedRecordBuilder> {
  static Serializer<RapydEmbedRecord> get serializer =>
      _$rapydEmbedRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RapydEmbedRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rapyd_embed');

  static Stream<RapydEmbedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RapydEmbedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RapydEmbedRecord._();
  factory RapydEmbedRecord([void Function(RapydEmbedRecordBuilder) updates]) =
      _$RapydEmbedRecord;

  static RapydEmbedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRapydEmbedRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    RapydEmbedRecord.serializer,
    RapydEmbedRecord(
      (r) => r..name = name,
    ),
  );

  return firestoreData;
}
