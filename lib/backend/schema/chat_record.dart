import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_record.g.dart';

abstract class ChatRecord implements Built<ChatRecord, ChatRecordBuilder> {
  static Serializer<ChatRecord> get serializer => _$chatRecordSerializer;

  String? get email;

  String? get name;

  String? get surname;

  @BuiltValueField(wireName: 'currently_viewing')
  String? get currentlyViewing;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatRecordBuilder builder) => builder
    ..email = ''
    ..name = ''
    ..surname = ''
    ..currentlyViewing = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat');

  static Stream<ChatRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatRecord._();
  factory ChatRecord([void Function(ChatRecordBuilder) updates]) = _$ChatRecord;

  static ChatRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatRecordData({
  String? email,
  String? name,
  String? surname,
  String? currentlyViewing,
}) {
  final firestoreData = serializers.toFirestore(
    ChatRecord.serializer,
    ChatRecord(
      (c) => c
        ..email = email
        ..name = name
        ..surname = surname
        ..currentlyViewing = currentlyViewing,
    ),
  );

  return firestoreData;
}
