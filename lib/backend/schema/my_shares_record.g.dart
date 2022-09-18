// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_shares_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MySharesRecord> _$mySharesRecordSerializer =
    new _$MySharesRecordSerializer();

class _$MySharesRecordSerializer
    implements StructuredSerializer<MySharesRecord> {
  @override
  final Iterable<Type> types = const [MySharesRecord, _$MySharesRecord];
  @override
  final String wireName = 'MySharesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MySharesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.platformLink;
    if (value != null) {
      result
        ..add('platform_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareAmount;
    if (value != null) {
      result
        ..add('share_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareCount;
    if (value != null) {
      result
        ..add('share_count')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareDividends;
    if (value != null) {
      result
        ..add('share_dividends')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareId;
    if (value != null) {
      result
        ..add('share_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shareName;
    if (value != null) {
      result
        ..add('share_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sharePlatform;
    if (value != null) {
      result
        ..add('share_platform')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagePath;
    if (value != null) {
      result
        ..add('image_path')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  MySharesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MySharesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'platform_link':
          result.platformLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_amount':
          result.shareAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_count':
          result.shareCount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_dividends':
          result.shareDividends = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_id':
          result.shareId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_name':
          result.shareName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'share_platform':
          result.sharePlatform = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_path':
          result.imagePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$MySharesRecord extends MySharesRecord {
  @override
  final String? platformLink;
  @override
  final String? shareAmount;
  @override
  final String? shareCount;
  @override
  final String? shareDividends;
  @override
  final String? shareId;
  @override
  final String? shareName;
  @override
  final String? sharePlatform;
  @override
  final String? imagePath;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MySharesRecord([void Function(MySharesRecordBuilder)? updates]) =>
      (new MySharesRecordBuilder()..update(updates))._build();

  _$MySharesRecord._(
      {this.platformLink,
      this.shareAmount,
      this.shareCount,
      this.shareDividends,
      this.shareId,
      this.shareName,
      this.sharePlatform,
      this.imagePath,
      this.name,
      this.description,
      this.ffRef})
      : super._();

  @override
  MySharesRecord rebuild(void Function(MySharesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MySharesRecordBuilder toBuilder() =>
      new MySharesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MySharesRecord &&
        platformLink == other.platformLink &&
        shareAmount == other.shareAmount &&
        shareCount == other.shareCount &&
        shareDividends == other.shareDividends &&
        shareId == other.shareId &&
        shareName == other.shareName &&
        sharePlatform == other.sharePlatform &&
        imagePath == other.imagePath &&
        name == other.name &&
        description == other.description &&
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
                                        $jc($jc(0, platformLink.hashCode),
                                            shareAmount.hashCode),
                                        shareCount.hashCode),
                                    shareDividends.hashCode),
                                shareId.hashCode),
                            shareName.hashCode),
                        sharePlatform.hashCode),
                    imagePath.hashCode),
                name.hashCode),
            description.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MySharesRecord')
          ..add('platformLink', platformLink)
          ..add('shareAmount', shareAmount)
          ..add('shareCount', shareCount)
          ..add('shareDividends', shareDividends)
          ..add('shareId', shareId)
          ..add('shareName', shareName)
          ..add('sharePlatform', sharePlatform)
          ..add('imagePath', imagePath)
          ..add('name', name)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MySharesRecordBuilder
    implements Builder<MySharesRecord, MySharesRecordBuilder> {
  _$MySharesRecord? _$v;

  String? _platformLink;
  String? get platformLink => _$this._platformLink;
  set platformLink(String? platformLink) => _$this._platformLink = platformLink;

  String? _shareAmount;
  String? get shareAmount => _$this._shareAmount;
  set shareAmount(String? shareAmount) => _$this._shareAmount = shareAmount;

  String? _shareCount;
  String? get shareCount => _$this._shareCount;
  set shareCount(String? shareCount) => _$this._shareCount = shareCount;

  String? _shareDividends;
  String? get shareDividends => _$this._shareDividends;
  set shareDividends(String? shareDividends) =>
      _$this._shareDividends = shareDividends;

  String? _shareId;
  String? get shareId => _$this._shareId;
  set shareId(String? shareId) => _$this._shareId = shareId;

  String? _shareName;
  String? get shareName => _$this._shareName;
  set shareName(String? shareName) => _$this._shareName = shareName;

  String? _sharePlatform;
  String? get sharePlatform => _$this._sharePlatform;
  set sharePlatform(String? sharePlatform) =>
      _$this._sharePlatform = sharePlatform;

  String? _imagePath;
  String? get imagePath => _$this._imagePath;
  set imagePath(String? imagePath) => _$this._imagePath = imagePath;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MySharesRecordBuilder() {
    MySharesRecord._initializeBuilder(this);
  }

  MySharesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _platformLink = $v.platformLink;
      _shareAmount = $v.shareAmount;
      _shareCount = $v.shareCount;
      _shareDividends = $v.shareDividends;
      _shareId = $v.shareId;
      _shareName = $v.shareName;
      _sharePlatform = $v.sharePlatform;
      _imagePath = $v.imagePath;
      _name = $v.name;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MySharesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MySharesRecord;
  }

  @override
  void update(void Function(MySharesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MySharesRecord build() => _build();

  _$MySharesRecord _build() {
    final _$result = _$v ??
        new _$MySharesRecord._(
            platformLink: platformLink,
            shareAmount: shareAmount,
            shareCount: shareCount,
            shareDividends: shareDividends,
            shareId: shareId,
            shareName: shareName,
            sharePlatform: sharePlatform,
            imagePath: imagePath,
            name: name,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
