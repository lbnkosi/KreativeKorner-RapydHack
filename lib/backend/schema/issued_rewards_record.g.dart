// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'issued_rewards_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IssuedRewardsRecord> _$issuedRewardsRecordSerializer =
    new _$IssuedRewardsRecordSerializer();

class _$IssuedRewardsRecordSerializer
    implements StructuredSerializer<IssuedRewardsRecord> {
  @override
  final Iterable<Type> types = const [
    IssuedRewardsRecord,
    _$IssuedRewardsRecord
  ];
  @override
  final String wireName = 'IssuedRewardsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IssuedRewardsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rewardId;
    if (value != null) {
      result
        ..add('reward_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
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
  IssuedRewardsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IssuedRewardsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reward_id':
          result.rewardId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
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

class _$IssuedRewardsRecord extends IssuedRewardsRecord {
  @override
  final String? rewardId;
  @override
  final String? user;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IssuedRewardsRecord(
          [void Function(IssuedRewardsRecordBuilder)? updates]) =>
      (new IssuedRewardsRecordBuilder()..update(updates))._build();

  _$IssuedRewardsRecord._({this.rewardId, this.user, this.ffRef}) : super._();

  @override
  IssuedRewardsRecord rebuild(
          void Function(IssuedRewardsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IssuedRewardsRecordBuilder toBuilder() =>
      new IssuedRewardsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IssuedRewardsRecord &&
        rewardId == other.rewardId &&
        user == other.user &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, rewardId.hashCode), user.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IssuedRewardsRecord')
          ..add('rewardId', rewardId)
          ..add('user', user)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IssuedRewardsRecordBuilder
    implements Builder<IssuedRewardsRecord, IssuedRewardsRecordBuilder> {
  _$IssuedRewardsRecord? _$v;

  String? _rewardId;
  String? get rewardId => _$this._rewardId;
  set rewardId(String? rewardId) => _$this._rewardId = rewardId;

  String? _user;
  String? get user => _$this._user;
  set user(String? user) => _$this._user = user;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IssuedRewardsRecordBuilder() {
    IssuedRewardsRecord._initializeBuilder(this);
  }

  IssuedRewardsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rewardId = $v.rewardId;
      _user = $v.user;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IssuedRewardsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IssuedRewardsRecord;
  }

  @override
  void update(void Function(IssuedRewardsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IssuedRewardsRecord build() => _build();

  _$IssuedRewardsRecord _build() {
    final _$result = _$v ??
        new _$IssuedRewardsRecord._(
            rewardId: rewardId, user: user, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
