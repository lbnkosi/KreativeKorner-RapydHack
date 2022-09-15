// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_protection_plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IncomeProtectionPlansRecord>
    _$incomeProtectionPlansRecordSerializer =
    new _$IncomeProtectionPlansRecordSerializer();

class _$IncomeProtectionPlansRecordSerializer
    implements StructuredSerializer<IncomeProtectionPlansRecord> {
  @override
  final Iterable<Type> types = const [
    IncomeProtectionPlansRecord,
    _$IncomeProtectionPlansRecord
  ];
  @override
  final String wireName = 'IncomeProtectionPlansRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IncomeProtectionPlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.planId;
    if (value != null) {
      result
        ..add('plan_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productId;
    if (value != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.maxPayout;
    if (value != null) {
      result
        ..add('max_payout')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interval;
    if (value != null) {
      result
        ..add('interval')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.monthlyPayment;
    if (value != null) {
      result
        ..add('monthly_payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ipiId;
    if (value != null) {
      result
        ..add('ipi_id')
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
  IncomeProtectionPlansRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IncomeProtectionPlansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'plan_id':
          result.planId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'max_payout':
          result.maxPayout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'monthly_payment':
          result.monthlyPayment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ipi_id':
          result.ipiId = serializers.deserialize(value,
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

class _$IncomeProtectionPlansRecord extends IncomeProtectionPlansRecord {
  @override
  final String? planId;
  @override
  final String? productId;
  @override
  final String? maxPayout;
  @override
  final String? interval;
  @override
  final String? monthlyPayment;
  @override
  final String? ipiId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IncomeProtectionPlansRecord(
          [void Function(IncomeProtectionPlansRecordBuilder)? updates]) =>
      (new IncomeProtectionPlansRecordBuilder()..update(updates))._build();

  _$IncomeProtectionPlansRecord._(
      {this.planId,
      this.productId,
      this.maxPayout,
      this.interval,
      this.monthlyPayment,
      this.ipiId,
      this.ffRef})
      : super._();

  @override
  IncomeProtectionPlansRecord rebuild(
          void Function(IncomeProtectionPlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IncomeProtectionPlansRecordBuilder toBuilder() =>
      new IncomeProtectionPlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IncomeProtectionPlansRecord &&
        planId == other.planId &&
        productId == other.productId &&
        maxPayout == other.maxPayout &&
        interval == other.interval &&
        monthlyPayment == other.monthlyPayment &&
        ipiId == other.ipiId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, planId.hashCode), productId.hashCode),
                        maxPayout.hashCode),
                    interval.hashCode),
                monthlyPayment.hashCode),
            ipiId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IncomeProtectionPlansRecord')
          ..add('planId', planId)
          ..add('productId', productId)
          ..add('maxPayout', maxPayout)
          ..add('interval', interval)
          ..add('monthlyPayment', monthlyPayment)
          ..add('ipiId', ipiId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IncomeProtectionPlansRecordBuilder
    implements
        Builder<IncomeProtectionPlansRecord,
            IncomeProtectionPlansRecordBuilder> {
  _$IncomeProtectionPlansRecord? _$v;

  String? _planId;
  String? get planId => _$this._planId;
  set planId(String? planId) => _$this._planId = planId;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _maxPayout;
  String? get maxPayout => _$this._maxPayout;
  set maxPayout(String? maxPayout) => _$this._maxPayout = maxPayout;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  String? _monthlyPayment;
  String? get monthlyPayment => _$this._monthlyPayment;
  set monthlyPayment(String? monthlyPayment) =>
      _$this._monthlyPayment = monthlyPayment;

  String? _ipiId;
  String? get ipiId => _$this._ipiId;
  set ipiId(String? ipiId) => _$this._ipiId = ipiId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IncomeProtectionPlansRecordBuilder() {
    IncomeProtectionPlansRecord._initializeBuilder(this);
  }

  IncomeProtectionPlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _planId = $v.planId;
      _productId = $v.productId;
      _maxPayout = $v.maxPayout;
      _interval = $v.interval;
      _monthlyPayment = $v.monthlyPayment;
      _ipiId = $v.ipiId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IncomeProtectionPlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IncomeProtectionPlansRecord;
  }

  @override
  void update(void Function(IncomeProtectionPlansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IncomeProtectionPlansRecord build() => _build();

  _$IncomeProtectionPlansRecord _build() {
    final _$result = _$v ??
        new _$IncomeProtectionPlansRecord._(
            planId: planId,
            productId: productId,
            maxPayout: maxPayout,
            interval: interval,
            monthlyPayment: monthlyPayment,
            ipiId: ipiId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
