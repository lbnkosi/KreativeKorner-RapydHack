// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VansRecord> _$vansRecordSerializer = new _$VansRecordSerializer();

class _$VansRecordSerializer implements StructuredSerializer<VansRecord> {
  @override
  final Iterable<Type> types = const [VansRecord, _$VansRecord];
  @override
  final String wireName = 'VansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.merchantReferenceId;
    if (value != null) {
      result
        ..add('merchant_reference_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ewallet;
    if (value != null) {
      result
        ..add('ewallet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beneficiaryName;
    if (value != null) {
      result
        ..add('beneficiary_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.countryIso;
    if (value != null) {
      result
        ..add('country_iso')
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
    value = object.abaRoutingNumber;
    if (value != null) {
      result
        ..add('aba_routing_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNumber;
    if (value != null) {
      result
        ..add('account_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    value = object.fundingInstructions;
    if (value != null) {
      result
        ..add('funding_instructions')
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
    value = object.iban;
    if (value != null) {
      result
        ..add('iban')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sortCode;
    if (value != null) {
      result
        ..add('sort_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bic;
    if (value != null) {
      result
        ..add('bic')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accountNo;
    if (value != null) {
      result
        ..add('account_no')
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
  VansRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'merchant_reference_id':
          result.merchantReferenceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ewallet':
          result.ewallet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beneficiary_name':
          result.beneficiaryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country_iso':
          result.countryIso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'aba_routing_number':
          result.abaRoutingNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'account_number':
          result.accountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'funding_instructions':
          result.fundingInstructions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'currency':
          result.currency = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'iban':
          result.iban = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sort_code':
          result.sortCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bic':
          result.bic = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'account_no':
          result.accountNo = serializers.deserialize(value,
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

class _$VansRecord extends VansRecord {
  @override
  final String? id;
  @override
  final String? merchantReferenceId;
  @override
  final String? ewallet;
  @override
  final String? beneficiaryName;
  @override
  final String? address;
  @override
  final String? countryIso;
  @override
  final String? country;
  @override
  final String? abaRoutingNumber;
  @override
  final String? accountNumber;
  @override
  final String? status;
  @override
  final String? description;
  @override
  final String? fundingInstructions;
  @override
  final String? currency;
  @override
  final String? iban;
  @override
  final String? sortCode;
  @override
  final String? bic;
  @override
  final String? accountNo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VansRecord([void Function(VansRecordBuilder)? updates]) =>
      (new VansRecordBuilder()..update(updates))._build();

  _$VansRecord._(
      {this.id,
      this.merchantReferenceId,
      this.ewallet,
      this.beneficiaryName,
      this.address,
      this.countryIso,
      this.country,
      this.abaRoutingNumber,
      this.accountNumber,
      this.status,
      this.description,
      this.fundingInstructions,
      this.currency,
      this.iban,
      this.sortCode,
      this.bic,
      this.accountNo,
      this.ffRef})
      : super._();

  @override
  VansRecord rebuild(void Function(VansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VansRecordBuilder toBuilder() => new VansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VansRecord &&
        id == other.id &&
        merchantReferenceId == other.merchantReferenceId &&
        ewallet == other.ewallet &&
        beneficiaryName == other.beneficiaryName &&
        address == other.address &&
        countryIso == other.countryIso &&
        country == other.country &&
        abaRoutingNumber == other.abaRoutingNumber &&
        accountNumber == other.accountNumber &&
        status == other.status &&
        description == other.description &&
        fundingInstructions == other.fundingInstructions &&
        currency == other.currency &&
        iban == other.iban &&
        sortCode == other.sortCode &&
        bic == other.bic &&
        accountNo == other.accountNo &&
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
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        merchantReferenceId
                                                                            .hashCode),
                                                                    ewallet
                                                                        .hashCode),
                                                                beneficiaryName
                                                                    .hashCode),
                                                            address.hashCode),
                                                        countryIso.hashCode),
                                                    country.hashCode),
                                                abaRoutingNumber.hashCode),
                                            accountNumber.hashCode),
                                        status.hashCode),
                                    description.hashCode),
                                fundingInstructions.hashCode),
                            currency.hashCode),
                        iban.hashCode),
                    sortCode.hashCode),
                bic.hashCode),
            accountNo.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VansRecord')
          ..add('id', id)
          ..add('merchantReferenceId', merchantReferenceId)
          ..add('ewallet', ewallet)
          ..add('beneficiaryName', beneficiaryName)
          ..add('address', address)
          ..add('countryIso', countryIso)
          ..add('country', country)
          ..add('abaRoutingNumber', abaRoutingNumber)
          ..add('accountNumber', accountNumber)
          ..add('status', status)
          ..add('description', description)
          ..add('fundingInstructions', fundingInstructions)
          ..add('currency', currency)
          ..add('iban', iban)
          ..add('sortCode', sortCode)
          ..add('bic', bic)
          ..add('accountNo', accountNo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VansRecordBuilder implements Builder<VansRecord, VansRecordBuilder> {
  _$VansRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _merchantReferenceId;
  String? get merchantReferenceId => _$this._merchantReferenceId;
  set merchantReferenceId(String? merchantReferenceId) =>
      _$this._merchantReferenceId = merchantReferenceId;

  String? _ewallet;
  String? get ewallet => _$this._ewallet;
  set ewallet(String? ewallet) => _$this._ewallet = ewallet;

  String? _beneficiaryName;
  String? get beneficiaryName => _$this._beneficiaryName;
  set beneficiaryName(String? beneficiaryName) =>
      _$this._beneficiaryName = beneficiaryName;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _countryIso;
  String? get countryIso => _$this._countryIso;
  set countryIso(String? countryIso) => _$this._countryIso = countryIso;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _abaRoutingNumber;
  String? get abaRoutingNumber => _$this._abaRoutingNumber;
  set abaRoutingNumber(String? abaRoutingNumber) =>
      _$this._abaRoutingNumber = abaRoutingNumber;

  String? _accountNumber;
  String? get accountNumber => _$this._accountNumber;
  set accountNumber(String? accountNumber) =>
      _$this._accountNumber = accountNumber;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _fundingInstructions;
  String? get fundingInstructions => _$this._fundingInstructions;
  set fundingInstructions(String? fundingInstructions) =>
      _$this._fundingInstructions = fundingInstructions;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _iban;
  String? get iban => _$this._iban;
  set iban(String? iban) => _$this._iban = iban;

  String? _sortCode;
  String? get sortCode => _$this._sortCode;
  set sortCode(String? sortCode) => _$this._sortCode = sortCode;

  String? _bic;
  String? get bic => _$this._bic;
  set bic(String? bic) => _$this._bic = bic;

  String? _accountNo;
  String? get accountNo => _$this._accountNo;
  set accountNo(String? accountNo) => _$this._accountNo = accountNo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VansRecordBuilder() {
    VansRecord._initializeBuilder(this);
  }

  VansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _merchantReferenceId = $v.merchantReferenceId;
      _ewallet = $v.ewallet;
      _beneficiaryName = $v.beneficiaryName;
      _address = $v.address;
      _countryIso = $v.countryIso;
      _country = $v.country;
      _abaRoutingNumber = $v.abaRoutingNumber;
      _accountNumber = $v.accountNumber;
      _status = $v.status;
      _description = $v.description;
      _fundingInstructions = $v.fundingInstructions;
      _currency = $v.currency;
      _iban = $v.iban;
      _sortCode = $v.sortCode;
      _bic = $v.bic;
      _accountNo = $v.accountNo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VansRecord;
  }

  @override
  void update(void Function(VansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VansRecord build() => _build();

  _$VansRecord _build() {
    final _$result = _$v ??
        new _$VansRecord._(
            id: id,
            merchantReferenceId: merchantReferenceId,
            ewallet: ewallet,
            beneficiaryName: beneficiaryName,
            address: address,
            countryIso: countryIso,
            country: country,
            abaRoutingNumber: abaRoutingNumber,
            accountNumber: accountNumber,
            status: status,
            description: description,
            fundingInstructions: fundingInstructions,
            currency: currency,
            iban: iban,
            sortCode: sortCode,
            bic: bic,
            accountNo: accountNo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
