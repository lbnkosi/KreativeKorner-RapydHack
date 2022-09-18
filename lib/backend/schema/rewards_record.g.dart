// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rewards_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RewardsRecord> _$rewardsRecordSerializer =
    new _$RewardsRecordSerializer();

class _$RewardsRecordSerializer implements StructuredSerializer<RewardsRecord> {
  @override
  final Iterable<Type> types = const [RewardsRecord, _$RewardsRecord];
  @override
  final String wireName = 'RewardsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RewardsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.maxRedemptions;
    if (value != null) {
      result
        ..add('max_redemptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountOff;
    if (value != null) {
      result
        ..add('amount_off')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.couponId;
    if (value != null) {
      result
        ..add('coupon_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
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
  RewardsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RewardsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'max_redemptions':
          result.maxRedemptions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount_off':
          result.amountOff = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coupon_id':
          result.couponId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
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

class _$RewardsRecord extends RewardsRecord {
  @override
  final String? maxRedemptions;
  @override
  final String? amountOff;
  @override
  final String? couponId;
  @override
  final String? duration;
  @override
  final String? id;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RewardsRecord([void Function(RewardsRecordBuilder)? updates]) =>
      (new RewardsRecordBuilder()..update(updates))._build();

  _$RewardsRecord._(
      {this.maxRedemptions,
      this.amountOff,
      this.couponId,
      this.duration,
      this.id,
      this.title,
      this.ffRef})
      : super._();

  @override
  RewardsRecord rebuild(void Function(RewardsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RewardsRecordBuilder toBuilder() => new RewardsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RewardsRecord &&
        maxRedemptions == other.maxRedemptions &&
        amountOff == other.amountOff &&
        couponId == other.couponId &&
        duration == other.duration &&
        id == other.id &&
        title == other.title &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, maxRedemptions.hashCode),
                            amountOff.hashCode),
                        couponId.hashCode),
                    duration.hashCode),
                id.hashCode),
            title.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RewardsRecord')
          ..add('maxRedemptions', maxRedemptions)
          ..add('amountOff', amountOff)
          ..add('couponId', couponId)
          ..add('duration', duration)
          ..add('id', id)
          ..add('title', title)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RewardsRecordBuilder
    implements Builder<RewardsRecord, RewardsRecordBuilder> {
  _$RewardsRecord? _$v;

  String? _maxRedemptions;
  String? get maxRedemptions => _$this._maxRedemptions;
  set maxRedemptions(String? maxRedemptions) =>
      _$this._maxRedemptions = maxRedemptions;

  String? _amountOff;
  String? get amountOff => _$this._amountOff;
  set amountOff(String? amountOff) => _$this._amountOff = amountOff;

  String? _couponId;
  String? get couponId => _$this._couponId;
  set couponId(String? couponId) => _$this._couponId = couponId;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RewardsRecordBuilder() {
    RewardsRecord._initializeBuilder(this);
  }

  RewardsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxRedemptions = $v.maxRedemptions;
      _amountOff = $v.amountOff;
      _couponId = $v.couponId;
      _duration = $v.duration;
      _id = $v.id;
      _title = $v.title;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RewardsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RewardsRecord;
  }

  @override
  void update(void Function(RewardsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RewardsRecord build() => _build();

  _$RewardsRecord _build() {
    final _$result = _$v ??
        new _$RewardsRecord._(
            maxRedemptions: maxRedemptions,
            amountOff: amountOff,
            couponId: couponId,
            duration: duration,
            id: id,
            title: title,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
