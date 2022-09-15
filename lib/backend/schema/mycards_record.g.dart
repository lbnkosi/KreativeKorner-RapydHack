// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mycards_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MycardsRecord> _$mycardsRecordSerializer =
    new _$MycardsRecordSerializer();

class _$MycardsRecordSerializer implements StructuredSerializer<MycardsRecord> {
  @override
  final Iterable<Type> types = const [MycardsRecord, _$MycardsRecord];
  @override
  final String wireName = 'MycardsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MycardsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardNumber;
    if (value != null) {
      result
        ..add('card_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expirationMonth;
    if (value != null) {
      result
        ..add('expiration_month')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.expirationYear;
    if (value != null) {
      result
        ..add('expiration_year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardHolder;
    if (value != null) {
      result
        ..add('card_holder')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cvv;
    if (value != null) {
      result
        ..add('cvv')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cardId;
    if (value != null) {
      result
        ..add('card_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.last4;
    if (value != null) {
      result
        ..add('last4')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fingerprintToken;
    if (value != null) {
      result
        ..add('fingerprint_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ewalletId;
    if (value != null) {
      result
        ..add('ewallet_id')
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
  MycardsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MycardsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'card_number':
          result.cardNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expiration_month':
          result.expirationMonth = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'expiration_year':
          result.expirationYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'card_holder':
          result.cardHolder = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cvv':
          result.cvv = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'card_id':
          result.cardId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'last4':
          result.last4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fingerprint_token':
          result.fingerprintToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ewallet_id':
          result.ewalletId = serializers.deserialize(value,
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

class _$MycardsRecord extends MycardsRecord {
  @override
  final String? type;
  @override
  final String? cardNumber;
  @override
  final String? expirationMonth;
  @override
  final String? expirationYear;
  @override
  final String? cardHolder;
  @override
  final String? cvv;
  @override
  final String? customerId;
  @override
  final String? logo;
  @override
  final String? cardId;
  @override
  final String? category;
  @override
  final String? last4;
  @override
  final String? fingerprintToken;
  @override
  final String? ewalletId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MycardsRecord([void Function(MycardsRecordBuilder)? updates]) =>
      (new MycardsRecordBuilder()..update(updates))._build();

  _$MycardsRecord._(
      {this.type,
      this.cardNumber,
      this.expirationMonth,
      this.expirationYear,
      this.cardHolder,
      this.cvv,
      this.customerId,
      this.logo,
      this.cardId,
      this.category,
      this.last4,
      this.fingerprintToken,
      this.ewalletId,
      this.ffRef})
      : super._();

  @override
  MycardsRecord rebuild(void Function(MycardsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MycardsRecordBuilder toBuilder() => new MycardsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MycardsRecord &&
        type == other.type &&
        cardNumber == other.cardNumber &&
        expirationMonth == other.expirationMonth &&
        expirationYear == other.expirationYear &&
        cardHolder == other.cardHolder &&
        cvv == other.cvv &&
        customerId == other.customerId &&
        logo == other.logo &&
        cardId == other.cardId &&
        category == other.category &&
        last4 == other.last4 &&
        fingerprintToken == other.fingerprintToken &&
        ewalletId == other.ewalletId &&
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
                                                    $jc($jc(0, type.hashCode),
                                                        cardNumber.hashCode),
                                                    expirationMonth.hashCode),
                                                expirationYear.hashCode),
                                            cardHolder.hashCode),
                                        cvv.hashCode),
                                    customerId.hashCode),
                                logo.hashCode),
                            cardId.hashCode),
                        category.hashCode),
                    last4.hashCode),
                fingerprintToken.hashCode),
            ewalletId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MycardsRecord')
          ..add('type', type)
          ..add('cardNumber', cardNumber)
          ..add('expirationMonth', expirationMonth)
          ..add('expirationYear', expirationYear)
          ..add('cardHolder', cardHolder)
          ..add('cvv', cvv)
          ..add('customerId', customerId)
          ..add('logo', logo)
          ..add('cardId', cardId)
          ..add('category', category)
          ..add('last4', last4)
          ..add('fingerprintToken', fingerprintToken)
          ..add('ewalletId', ewalletId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MycardsRecordBuilder
    implements Builder<MycardsRecord, MycardsRecordBuilder> {
  _$MycardsRecord? _$v;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  String? _expirationMonth;
  String? get expirationMonth => _$this._expirationMonth;
  set expirationMonth(String? expirationMonth) =>
      _$this._expirationMonth = expirationMonth;

  String? _expirationYear;
  String? get expirationYear => _$this._expirationYear;
  set expirationYear(String? expirationYear) =>
      _$this._expirationYear = expirationYear;

  String? _cardHolder;
  String? get cardHolder => _$this._cardHolder;
  set cardHolder(String? cardHolder) => _$this._cardHolder = cardHolder;

  String? _cvv;
  String? get cvv => _$this._cvv;
  set cvv(String? cvv) => _$this._cvv = cvv;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _cardId;
  String? get cardId => _$this._cardId;
  set cardId(String? cardId) => _$this._cardId = cardId;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _last4;
  String? get last4 => _$this._last4;
  set last4(String? last4) => _$this._last4 = last4;

  String? _fingerprintToken;
  String? get fingerprintToken => _$this._fingerprintToken;
  set fingerprintToken(String? fingerprintToken) =>
      _$this._fingerprintToken = fingerprintToken;

  String? _ewalletId;
  String? get ewalletId => _$this._ewalletId;
  set ewalletId(String? ewalletId) => _$this._ewalletId = ewalletId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MycardsRecordBuilder() {
    MycardsRecord._initializeBuilder(this);
  }

  MycardsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _cardNumber = $v.cardNumber;
      _expirationMonth = $v.expirationMonth;
      _expirationYear = $v.expirationYear;
      _cardHolder = $v.cardHolder;
      _cvv = $v.cvv;
      _customerId = $v.customerId;
      _logo = $v.logo;
      _cardId = $v.cardId;
      _category = $v.category;
      _last4 = $v.last4;
      _fingerprintToken = $v.fingerprintToken;
      _ewalletId = $v.ewalletId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MycardsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MycardsRecord;
  }

  @override
  void update(void Function(MycardsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MycardsRecord build() => _build();

  _$MycardsRecord _build() {
    final _$result = _$v ??
        new _$MycardsRecord._(
            type: type,
            cardNumber: cardNumber,
            expirationMonth: expirationMonth,
            expirationYear: expirationYear,
            cardHolder: cardHolder,
            cvv: cvv,
            customerId: customerId,
            logo: logo,
            cardId: cardId,
            category: category,
            last4: last4,
            fingerprintToken: fingerprintToken,
            ewalletId: ewalletId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
