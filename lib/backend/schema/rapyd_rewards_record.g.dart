// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapyd_rewards_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RapydRewardsRecord> _$rapydRewardsRecordSerializer =
    new _$RapydRewardsRecordSerializer();

class _$RapydRewardsRecordSerializer
    implements StructuredSerializer<RapydRewardsRecord> {
  @override
  final Iterable<Type> types = const [RapydRewardsRecord, _$RapydRewardsRecord];
  @override
  final String wireName = 'RapydRewardsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RapydRewardsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.surname;
    if (value != null) {
      result
        ..add('surname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagram;
    if (value != null) {
      result
        ..add('instagram')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramLikes;
    if (value != null) {
      result
        ..add('instagram_likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.instagramComments;
    if (value != null) {
      result
        ..add('instagram_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tiktok;
    if (value != null) {
      result
        ..add('tiktok')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tiktokLikes;
    if (value != null) {
      result
        ..add('tiktok_likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tiktokViews;
    if (value != null) {
      result
        ..add('tiktok_views')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitch;
    if (value != null) {
      result
        ..add('twitch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.twitchViews;
    if (value != null) {
      result
        ..add('twitch_views')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtube;
    if (value != null) {
      result
        ..add('youtube')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeLikes;
    if (value != null) {
      result
        ..add('youtube_likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeComments;
    if (value != null) {
      result
        ..add('youtube_comments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RapydRewardsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RapydRewardsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagram':
          result.instagram = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagram_likes':
          result.instagramLikes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'instagram_comments':
          result.instagramComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tiktok':
          result.tiktok = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tiktok_likes':
          result.tiktokLikes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tiktok_views':
          result.tiktokViews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitch':
          result.twitch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'twitch_views':
          result.twitchViews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube':
          result.youtube = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube_likes':
          result.youtubeLikes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube_comments':
          result.youtubeComments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$RapydRewardsRecord extends RapydRewardsRecord {
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? instagram;
  @override
  final String? instagramLikes;
  @override
  final String? instagramComments;
  @override
  final String? tiktok;
  @override
  final String? tiktokLikes;
  @override
  final String? tiktokViews;
  @override
  final String? twitch;
  @override
  final String? twitchViews;
  @override
  final String? youtube;
  @override
  final String? youtubeLikes;
  @override
  final String? youtubeComments;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RapydRewardsRecord(
          [void Function(RapydRewardsRecordBuilder)? updates]) =>
      (new RapydRewardsRecordBuilder()..update(updates))._build();

  _$RapydRewardsRecord._(
      {this.name,
      this.surname,
      this.instagram,
      this.instagramLikes,
      this.instagramComments,
      this.tiktok,
      this.tiktokLikes,
      this.tiktokViews,
      this.twitch,
      this.twitchViews,
      this.youtube,
      this.youtubeLikes,
      this.youtubeComments,
      this.ffRef})
      : super._();

  @override
  RapydRewardsRecord rebuild(
          void Function(RapydRewardsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RapydRewardsRecordBuilder toBuilder() =>
      new RapydRewardsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RapydRewardsRecord &&
        name == other.name &&
        surname == other.surname &&
        instagram == other.instagram &&
        instagramLikes == other.instagramLikes &&
        instagramComments == other.instagramComments &&
        tiktok == other.tiktok &&
        tiktokLikes == other.tiktokLikes &&
        tiktokViews == other.tiktokViews &&
        twitch == other.twitch &&
        twitchViews == other.twitchViews &&
        youtube == other.youtube &&
        youtubeLikes == other.youtubeLikes &&
        youtubeComments == other.youtubeComments &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, name.hashCode),
                                                        surname.hashCode),
                                                    instagram.hashCode),
                                                instagramLikes.hashCode),
                                            instagramComments.hashCode),
                                        tiktok.hashCode),
                                    tiktokLikes.hashCode),
                                tiktokViews.hashCode),
                            twitch.hashCode),
                        twitchViews.hashCode),
                    youtube.hashCode),
                youtubeLikes.hashCode),
            youtubeComments.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RapydRewardsRecord')
          ..add('name', name)
          ..add('surname', surname)
          ..add('instagram', instagram)
          ..add('instagramLikes', instagramLikes)
          ..add('instagramComments', instagramComments)
          ..add('tiktok', tiktok)
          ..add('tiktokLikes', tiktokLikes)
          ..add('tiktokViews', tiktokViews)
          ..add('twitch', twitch)
          ..add('twitchViews', twitchViews)
          ..add('youtube', youtube)
          ..add('youtubeLikes', youtubeLikes)
          ..add('youtubeComments', youtubeComments)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RapydRewardsRecordBuilder
    implements Builder<RapydRewardsRecord, RapydRewardsRecordBuilder> {
  _$RapydRewardsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _instagram;
  String? get instagram => _$this._instagram;
  set instagram(String? instagram) => _$this._instagram = instagram;

  String? _instagramLikes;
  String? get instagramLikes => _$this._instagramLikes;
  set instagramLikes(String? instagramLikes) =>
      _$this._instagramLikes = instagramLikes;

  String? _instagramComments;
  String? get instagramComments => _$this._instagramComments;
  set instagramComments(String? instagramComments) =>
      _$this._instagramComments = instagramComments;

  String? _tiktok;
  String? get tiktok => _$this._tiktok;
  set tiktok(String? tiktok) => _$this._tiktok = tiktok;

  String? _tiktokLikes;
  String? get tiktokLikes => _$this._tiktokLikes;
  set tiktokLikes(String? tiktokLikes) => _$this._tiktokLikes = tiktokLikes;

  String? _tiktokViews;
  String? get tiktokViews => _$this._tiktokViews;
  set tiktokViews(String? tiktokViews) => _$this._tiktokViews = tiktokViews;

  String? _twitch;
  String? get twitch => _$this._twitch;
  set twitch(String? twitch) => _$this._twitch = twitch;

  String? _twitchViews;
  String? get twitchViews => _$this._twitchViews;
  set twitchViews(String? twitchViews) => _$this._twitchViews = twitchViews;

  String? _youtube;
  String? get youtube => _$this._youtube;
  set youtube(String? youtube) => _$this._youtube = youtube;

  String? _youtubeLikes;
  String? get youtubeLikes => _$this._youtubeLikes;
  set youtubeLikes(String? youtubeLikes) => _$this._youtubeLikes = youtubeLikes;

  String? _youtubeComments;
  String? get youtubeComments => _$this._youtubeComments;
  set youtubeComments(String? youtubeComments) =>
      _$this._youtubeComments = youtubeComments;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RapydRewardsRecordBuilder() {
    RapydRewardsRecord._initializeBuilder(this);
  }

  RapydRewardsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _surname = $v.surname;
      _instagram = $v.instagram;
      _instagramLikes = $v.instagramLikes;
      _instagramComments = $v.instagramComments;
      _tiktok = $v.tiktok;
      _tiktokLikes = $v.tiktokLikes;
      _tiktokViews = $v.tiktokViews;
      _twitch = $v.twitch;
      _twitchViews = $v.twitchViews;
      _youtube = $v.youtube;
      _youtubeLikes = $v.youtubeLikes;
      _youtubeComments = $v.youtubeComments;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RapydRewardsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RapydRewardsRecord;
  }

  @override
  void update(void Function(RapydRewardsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RapydRewardsRecord build() => _build();

  _$RapydRewardsRecord _build() {
    final _$result = _$v ??
        new _$RapydRewardsRecord._(
            name: name,
            surname: surname,
            instagram: instagram,
            instagramLikes: instagramLikes,
            instagramComments: instagramComments,
            tiktok: tiktok,
            tiktokLikes: tiktokLikes,
            tiktokViews: tiktokViews,
            twitch: twitch,
            twitchViews: twitchViews,
            youtube: youtube,
            youtubeLikes: youtubeLikes,
            youtubeComments: youtubeComments,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
