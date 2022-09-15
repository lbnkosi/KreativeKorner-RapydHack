// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiaries_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BeneficiariesRecord> _$beneficiariesRecordSerializer =
    new _$BeneficiariesRecordSerializer();

class _$BeneficiariesRecordSerializer
    implements StructuredSerializer<BeneficiariesRecord> {
  @override
  final Iterable<Type> types = const [
    BeneficiariesRecord,
    _$BeneficiariesRecord
  ];
  @override
  final String wireName = 'BeneficiariesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BeneficiariesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('account_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currency;
    if (value != null) {
      result
        ..add('currency')
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
  BeneficiariesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BeneficiariesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'account_number':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
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

class _$BeneficiariesRecord extends BeneficiariesRecord {
  @override
  final String? accountNumber;
  @override
  final String? country;
  @override
  final String? currency;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BeneficiariesRecord(
          [void Function(BeneficiariesRecordBuilder)? updates]) =>
      (new BeneficiariesRecordBuilder()..update(updates))._build();

  _$BeneficiariesRecord._(
      {this.accountNumber,
      this.country,
      this.currency,
      this.id,
      this.name,
      this.surname,
      this.ffRef})
      : super._();

  @override
  BeneficiariesRecord rebuild(
          void Function(BeneficiariesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BeneficiariesRecordBuilder toBuilder() =>
      new BeneficiariesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BeneficiariesRecord &&
        accountNumber == other.accountNumber &&
        country == other.country &&
        currency == other.currency &&
        id == other.id &&
        name == other.name &&
        surname == other.surname &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, accountNumber.hashCode), country.hashCode),
                        currency.hashCode),
                    id.hashCode),
                name.hashCode),
            surname.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BeneficiariesRecord')
          ..add('accountNumber', accountNumber)
          ..add('country', country)
          ..add('currency', currency)
          ..add('id', id)
          ..add('name', name)
          ..add('surname', surname)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BeneficiariesRecordBuilder
    implements Builder<BeneficiariesRecord, BeneficiariesRecordBuilder> {
  _$BeneficiariesRecord? _$v;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BeneficiariesRecordBuilder() {
    BeneficiariesRecord._initializeBuilder(this);
  }

  BeneficiariesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountNumber = $v.accountNumber;
      _country = $v.country;
      _currency = $v.currency;
      _id = $v.id;
      _name = $v.name;
      _surname = $v.surname;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BeneficiariesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BeneficiariesRecord;
  }

  @override
  void update(void Function(BeneficiariesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BeneficiariesRecord build() => _build();

  _$BeneficiariesRecord _build() {
    final _$result = _$v ??
        new _$BeneficiariesRecord._(
            accountNumber: accountNumber,
            country: country,
            currency: currency,
            id: id,
            name: name,
            surname: surname,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
