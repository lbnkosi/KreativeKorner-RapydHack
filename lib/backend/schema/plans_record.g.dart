// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlansRecord> _$plansRecordSerializer = new _$PlansRecordSerializer();

class _$PlansRecordSerializer implements StructuredSerializer<PlansRecord> {
  @override
  final Iterable<Type> types = const [PlansRecord, _$PlansRecord];
  @override
  final String wireName = 'PlansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.planAmount;
    if (value != null) {
      result
        ..add('plan_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planCurrency;
    if (value != null) {
      result
        ..add('plan_currency')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planId;
    if (value != null) {
      result
        ..add('plan_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.planType;
    if (value != null) {
      result
        ..add('plan_type')
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
  PlansRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'plan_amount':
          result.planAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plan_currency':
          result.planCurrency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plan_id':
          result.planId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plan_type':
          result.planType = serializers.deserialize(value,
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

class _$PlansRecord extends PlansRecord {
  @override
  final String? planAmount;
  @override
  final String? planCurrency;
  @override
  final String? planId;
  @override
  final String? planType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlansRecord([void Function(PlansRecordBuilder)? updates]) =>
      (new PlansRecordBuilder()..update(updates))._build();

  _$PlansRecord._(
      {this.planAmount,
      this.planCurrency,
      this.planId,
      this.planType,
      this.ffRef})
      : super._();

  @override
  PlansRecord rebuild(void Function(PlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlansRecordBuilder toBuilder() => new PlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlansRecord &&
        planAmount == other.planAmount &&
        planCurrency == other.planCurrency &&
        planId == other.planId &&
        planType == other.planType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, planAmount.hashCode), planCurrency.hashCode),
                planId.hashCode),
            planType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlansRecord')
          ..add('planAmount', planAmount)
          ..add('planCurrency', planCurrency)
          ..add('planId', planId)
          ..add('planType', planType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlansRecordBuilder implements Builder<PlansRecord, PlansRecordBuilder> {
  _$PlansRecord? _$v;

  String? _planAmount;
  String? get planAmount => _$this._planAmount;
  set planAmount(String? planAmount) => _$this._planAmount = planAmount;

  String? _planCurrency;
  String? get planCurrency => _$this._planCurrency;
  set planCurrency(String? planCurrency) => _$this._planCurrency = planCurrency;

  String? _planId;
  String? get planId => _$this._planId;
  set planId(String? planId) => _$this._planId = planId;

  String? _planType;
  String? get planType => _$this._planType;
  set planType(String? planType) => _$this._planType = planType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlansRecordBuilder() {
    PlansRecord._initializeBuilder(this);
  }

  PlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _planAmount = $v.planAmount;
      _planCurrency = $v.planCurrency;
      _planId = $v.planId;
      _planType = $v.planType;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlansRecord;
  }

  @override
  void update(void Function(PlansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlansRecord build() => _build();

  _$PlansRecord _build() {
    final _$result = _$v ??
        new _$PlansRecord._(
            planAmount: planAmount,
            planCurrency: planCurrency,
            planId: planId,
            planType: planType,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
