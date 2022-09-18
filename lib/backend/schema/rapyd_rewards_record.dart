import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rapyd_rewards_record.g.dart';

abstract class RapydRewardsRecord
    implements Built<RapydRewardsRecord, RapydRewardsRecordBuilder> {
  static Serializer<RapydRewardsRecord> get serializer =>
      _$rapydRewardsRecordSerializer;

  String? get name;

  String? get surname;

  String? get instagram;

  @BuiltValueField(wireName: 'instagram_likes')
  String? get instagramLikes;

  @BuiltValueField(wireName: 'instagram_comments')
  String? get instagramComments;

  String? get tiktok;

  @BuiltValueField(wireName: 'tiktok_likes')
  String? get tiktokLikes;

  @BuiltValueField(wireName: 'tiktok_views')
  String? get tiktokViews;

  String? get twitch;

  @BuiltValueField(wireName: 'twitch_views')
  String? get twitchViews;

  String? get youtube;

  @BuiltValueField(wireName: 'youtube_likes')
  String? get youtubeLikes;

  @BuiltValueField(wireName: 'youtube_comments')
  String? get youtubeComments;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RapydRewardsRecordBuilder builder) => builder
    ..name = ''
    ..surname = ''
    ..instagram = ''
    ..instagramLikes = ''
    ..instagramComments = ''
    ..tiktok = ''
    ..tiktokLikes = ''
    ..tiktokViews = ''
    ..twitch = ''
    ..twitchViews = ''
    ..youtube = ''
    ..youtubeLikes = ''
    ..youtubeComments = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rapyd_rewards');

  static Stream<RapydRewardsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RapydRewardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RapydRewardsRecord._();
  factory RapydRewardsRecord(
          [void Function(RapydRewardsRecordBuilder) updates]) =
      _$RapydRewardsRecord;

  static RapydRewardsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRapydRewardsRecordData({
  String? name,
  String? surname,
  String? instagram,
  String? instagramLikes,
  String? instagramComments,
  String? tiktok,
  String? tiktokLikes,
  String? tiktokViews,
  String? twitch,
  String? twitchViews,
  String? youtube,
  String? youtubeLikes,
  String? youtubeComments,
}) {
  final firestoreData = serializers.toFirestore(
    RapydRewardsRecord.serializer,
    RapydRewardsRecord(
      (r) => r
        ..name = name
        ..surname = surname
        ..instagram = instagram
        ..instagramLikes = instagramLikes
        ..instagramComments = instagramComments
        ..tiktok = tiktok
        ..tiktokLikes = tiktokLikes
        ..tiktokViews = tiktokViews
        ..twitch = twitch
        ..twitchViews = twitchViews
        ..youtube = youtube
        ..youtubeLikes = youtubeLikes
        ..youtubeComments = youtubeComments,
    ),
  );

  return firestoreData;
}
