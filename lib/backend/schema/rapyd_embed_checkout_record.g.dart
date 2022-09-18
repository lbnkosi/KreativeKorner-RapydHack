// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapyd_embed_checkout_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RapydEmbedCheckoutRecord> _$rapydEmbedCheckoutRecordSerializer =
    new _$RapydEmbedCheckoutRecordSerializer();

class _$RapydEmbedCheckoutRecordSerializer
    implements StructuredSerializer<RapydEmbedCheckoutRecord> {
  @override
  final Iterable<Type> types = const [
    RapydEmbedCheckoutRecord,
    _$RapydEmbedCheckoutRecord
  ];
  @override
  final String wireName = 'RapydEmbedCheckoutRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RapydEmbedCheckoutRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.bnpl;
    if (value != null) {
      result
        ..add('bnpl')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.extendedWarranty;
    if (value != null) {
      result
        ..add('extended_warranty')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.healthCover;
    if (value != null) {
      result
        ..add('health_cover')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.shippingInsurance;
    if (value != null) {
      result
        ..add('shipping_insurance')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.simService;
    if (value != null) {
      result
        ..add('sim_service')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.travelCard;
    if (value != null) {
      result
        ..add('travel_card')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.travelInsurance;
    if (value != null) {
      result
        ..add('travel_insurance')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.countryFilter;
    if (value != null) {
      result
        ..add('country_filter')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkoutId;
    if (value != null) {
      result
        ..add('checkout_id')
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
  RapydEmbedCheckoutRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RapydEmbedCheckoutRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'bnpl':
          result.bnpl = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'extended_warranty':
          result.extendedWarranty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'health_cover':
          result.healthCover = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'shipping_insurance':
          result.shippingInsurance = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sim_service':
          result.simService = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'travel_card':
          result.travelCard = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'travel_insurance':
          result.travelInsurance = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'country_filter':
          result.countryFilter = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkout_id':
          result.checkoutId = serializers.deserialize(value,
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

class _$RapydEmbedCheckoutRecord extends RapydEmbedCheckoutRecord {
  @override
  final bool? bnpl;
  @override
  final bool? extendedWarranty;
  @override
  final bool? healthCover;
  @override
  final bool? shippingInsurance;
  @override
  final bool? simService;
  @override
  final bool? travelCard;
  @override
  final bool? travelInsurance;
  @override
  final String? countryFilter;
  @override
  final String? checkoutId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RapydEmbedCheckoutRecord(
          [void Function(RapydEmbedCheckoutRecordBuilder)? updates]) =>
      (new RapydEmbedCheckoutRecordBuilder()..update(updates))._build();

  _$RapydEmbedCheckoutRecord._(
      {this.bnpl,
      this.extendedWarranty,
      this.healthCover,
      this.shippingInsurance,
      this.simService,
      this.travelCard,
      this.travelInsurance,
      this.countryFilter,
      this.checkoutId,
      this.ffRef})
      : super._();

  @override
  RapydEmbedCheckoutRecord rebuild(
          void Function(RapydEmbedCheckoutRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RapydEmbedCheckoutRecordBuilder toBuilder() =>
      new RapydEmbedCheckoutRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RapydEmbedCheckoutRecord &&
        bnpl == other.bnpl &&
        extendedWarranty == other.extendedWarranty &&
        healthCover == other.healthCover &&
        shippingInsurance == other.shippingInsurance &&
        simService == other.simService &&
        travelCard == other.travelCard &&
        travelInsurance == other.travelInsurance &&
        countryFilter == other.countryFilter &&
        checkoutId == other.checkoutId &&
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
                                    $jc($jc(0, bnpl.hashCode),
                                        extendedWarranty.hashCode),
                                    healthCover.hashCode),
                                shippingInsurance.hashCode),
                            simService.hashCode),
                        travelCard.hashCode),
                    travelInsurance.hashCode),
                countryFilter.hashCode),
            checkoutId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RapydEmbedCheckoutRecord')
          ..add('bnpl', bnpl)
          ..add('extendedWarranty', extendedWarranty)
          ..add('healthCover', healthCover)
          ..add('shippingInsurance', shippingInsurance)
          ..add('simService', simService)
          ..add('travelCard', travelCard)
          ..add('travelInsurance', travelInsurance)
          ..add('countryFilter', countryFilter)
          ..add('checkoutId', checkoutId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RapydEmbedCheckoutRecordBuilder
    implements
        Builder<RapydEmbedCheckoutRecord, RapydEmbedCheckoutRecordBuilder> {
  _$RapydEmbedCheckoutRecord? _$v;

  bool? _bnpl;
  bool? get bnpl => _$this._bnpl;
  set bnpl(bool? bnpl) => _$this._bnpl = bnpl;

  bool? _extendedWarranty;
  bool? get extendedWarranty => _$this._extendedWarranty;
  set extendedWarranty(bool? extendedWarranty) =>
      _$this._extendedWarranty = extendedWarranty;

  bool? _healthCover;
  bool? get healthCover => _$this._healthCover;
  set healthCover(bool? healthCover) => _$this._healthCover = healthCover;

  bool? _shippingInsurance;
  bool? get shippingInsurance => _$this._shippingInsurance;
  set shippingInsurance(bool? shippingInsurance) =>
      _$this._shippingInsurance = shippingInsurance;

  bool? _simService;
  bool? get simService => _$this._simService;
  set simService(bool? simService) => _$this._simService = simService;

  bool? _travelCard;
  bool? get travelCard => _$this._travelCard;
  set travelCard(bool? travelCard) => _$this._travelCard = travelCard;

  bool? _travelInsurance;
  bool? get travelInsurance => _$this._travelInsurance;
  set travelInsurance(bool? travelInsurance) =>
      _$this._travelInsurance = travelInsurance;

  String? _countryFilter;
  String? get countryFilter => _$this._countryFilter;
  set countryFilter(String? countryFilter) =>
      _$this._countryFilter = countryFilter;

  String? _checkoutId;
  String? get checkoutId => _$this._checkoutId;
  set checkoutId(String? checkoutId) => _$this._checkoutId = checkoutId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RapydEmbedCheckoutRecordBuilder() {
    RapydEmbedCheckoutRecord._initializeBuilder(this);
  }

  RapydEmbedCheckoutRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bnpl = $v.bnpl;
      _extendedWarranty = $v.extendedWarranty;
      _healthCover = $v.healthCover;
      _shippingInsurance = $v.shippingInsurance;
      _simService = $v.simService;
      _travelCard = $v.travelCard;
      _travelInsurance = $v.travelInsurance;
      _countryFilter = $v.countryFilter;
      _checkoutId = $v.checkoutId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RapydEmbedCheckoutRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RapydEmbedCheckoutRecord;
  }

  @override
  void update(void Function(RapydEmbedCheckoutRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RapydEmbedCheckoutRecord build() => _build();

  _$RapydEmbedCheckoutRecord _build() {
    final _$result = _$v ??
        new _$RapydEmbedCheckoutRecord._(
            bnpl: bnpl,
            extendedWarranty: extendedWarranty,
            healthCover: healthCover,
            shippingInsurance: shippingInsurance,
            simService: simService,
            travelCard: travelCard,
            travelInsurance: travelInsurance,
            countryFilter: countryFilter,
            checkoutId: checkoutId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
