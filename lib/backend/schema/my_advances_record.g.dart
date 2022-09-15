// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_advances_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyAdvancesRecord> _$myAdvancesRecordSerializer =
    new _$MyAdvancesRecordSerializer();

class _$MyAdvancesRecordSerializer
    implements StructuredSerializer<MyAdvancesRecord> {
  @override
  final Iterable<Type> types = const [MyAdvancesRecord, _$MyAdvancesRecord];
  @override
  final String wireName = 'MyAdvancesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyAdvancesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.amountPayable;
    if (value != null) {
      result
        ..add('amount_payable')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.beneficiaryId;
    if (value != null) {
      result
        ..add('beneficiary_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.billingCycle;
    if (value != null) {
      result
        ..add('billing_cycle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interestPercentage;
    if (value != null) {
      result
        ..add('interest_percentage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.invoiceId;
    if (value != null) {
      result
        ..add('invoice_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.senderId;
    if (value != null) {
      result
        ..add('sender_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collectCardNumber;
    if (value != null) {
      result
        ..add('collect_card_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collectCardId;
    if (value != null) {
      result
        ..add('collect_card_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disburseAccountNumber;
    if (value != null) {
      result
        ..add('disburse_account_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.disbursePayoutId;
    if (value != null) {
      result
        ..add('disburse_payout_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.singleCollection;
    if (value != null) {
      result
        ..add('single_collection')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.months;
    if (value != null) {
      result
        ..add('months')
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
  MyAdvancesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyAdvancesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'amount_payable':
          result.amountPayable = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'beneficiary_id':
          result.beneficiaryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'billing_cycle':
          result.billingCycle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interest_percentage':
          result.interestPercentage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'invoice_id':
          result.invoiceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sender_id':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'collect_card_number':
          result.collectCardNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'collect_card_id':
          result.collectCardId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'disburse_account_number':
          result.disburseAccountNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'disburse_payout_id':
          result.disbursePayoutId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'single_collection':
          result.singleCollection = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'months':
          result.months = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'monthly_payment':
          result.monthlyPayment = serializers.deserialize(value,
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

class _$MyAdvancesRecord extends MyAdvancesRecord {
  @override
  final String? amount;
  @override
  final String? amountPayable;
  @override
  final String? beneficiaryId;
  @override
  final String? billingCycle;
  @override
  final String? interestPercentage;
  @override
  final String? invoiceId;
  @override
  final String? senderId;
  @override
  final String? collectCardNumber;
  @override
  final String? collectCardId;
  @override
  final String? disburseAccountNumber;
  @override
  final String? disbursePayoutId;
  @override
  final bool? status;
  @override
  final bool? singleCollection;
  @override
  final String? months;
  @override
  final String? monthlyPayment;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyAdvancesRecord(
          [void Function(MyAdvancesRecordBuilder)? updates]) =>
      (new MyAdvancesRecordBuilder()..update(updates))._build();

  _$MyAdvancesRecord._(
      {this.amount,
      this.amountPayable,
      this.beneficiaryId,
      this.billingCycle,
      this.interestPercentage,
      this.invoiceId,
      this.senderId,
      this.collectCardNumber,
      this.collectCardId,
      this.disburseAccountNumber,
      this.disbursePayoutId,
      this.status,
      this.singleCollection,
      this.months,
      this.monthlyPayment,
      this.ffRef})
      : super._();

  @override
  MyAdvancesRecord rebuild(void Function(MyAdvancesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyAdvancesRecordBuilder toBuilder() =>
      new MyAdvancesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyAdvancesRecord &&
        amount == other.amount &&
        amountPayable == other.amountPayable &&
        beneficiaryId == other.beneficiaryId &&
        billingCycle == other.billingCycle &&
        interestPercentage == other.interestPercentage &&
        invoiceId == other.invoiceId &&
        senderId == other.senderId &&
        collectCardNumber == other.collectCardNumber &&
        collectCardId == other.collectCardId &&
        disburseAccountNumber == other.disburseAccountNumber &&
        disbursePayoutId == other.disbursePayoutId &&
        status == other.status &&
        singleCollection == other.singleCollection &&
        months == other.months &&
        monthlyPayment == other.monthlyPayment &&
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
                                                                    0,
                                                                    amount
                                                                        .hashCode),
                                                                amountPayable
                                                                    .hashCode),
                                                            beneficiaryId
                                                                .hashCode),
                                                        billingCycle.hashCode),
                                                    interestPercentage
                                                        .hashCode),
                                                invoiceId.hashCode),
                                            senderId.hashCode),
                                        collectCardNumber.hashCode),
                                    collectCardId.hashCode),
                                disburseAccountNumber.hashCode),
                            disbursePayoutId.hashCode),
                        status.hashCode),
                    singleCollection.hashCode),
                months.hashCode),
            monthlyPayment.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyAdvancesRecord')
          ..add('amount', amount)
          ..add('amountPayable', amountPayable)
          ..add('beneficiaryId', beneficiaryId)
          ..add('billingCycle', billingCycle)
          ..add('interestPercentage', interestPercentage)
          ..add('invoiceId', invoiceId)
          ..add('senderId', senderId)
          ..add('collectCardNumber', collectCardNumber)
          ..add('collectCardId', collectCardId)
          ..add('disburseAccountNumber', disburseAccountNumber)
          ..add('disbursePayoutId', disbursePayoutId)
          ..add('status', status)
          ..add('singleCollection', singleCollection)
          ..add('months', months)
          ..add('monthlyPayment', monthlyPayment)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyAdvancesRecordBuilder
    implements Builder<MyAdvancesRecord, MyAdvancesRecordBuilder> {
  _$MyAdvancesRecord? _$v;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  String? _amountPayable;
  String? get amountPayable => _$this._amountPayable;
  set amountPayable(String? amountPayable) =>
      _$this._amountPayable = amountPayable;

  String? _beneficiaryId;
  String? get beneficiaryId => _$this._beneficiaryId;
  set beneficiaryId(String? beneficiaryId) =>
      _$this._beneficiaryId = beneficiaryId;

  String? _billingCycle;
  String? get billingCycle => _$this._billingCycle;
  set billingCycle(String? billingCycle) => _$this._billingCycle = billingCycle;

  String? _interestPercentage;
  String? get interestPercentage => _$this._interestPercentage;
  set interestPercentage(String? interestPercentage) =>
      _$this._interestPercentage = interestPercentage;

  String? _invoiceId;
  String? get invoiceId => _$this._invoiceId;
  set invoiceId(String? invoiceId) => _$this._invoiceId = invoiceId;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  String? _collectCardNumber;
  String? get collectCardNumber => _$this._collectCardNumber;
  set collectCardNumber(String? collectCardNumber) =>
      _$this._collectCardNumber = collectCardNumber;

  String? _collectCardId;
  String? get collectCardId => _$this._collectCardId;
  set collectCardId(String? collectCardId) =>
      _$this._collectCardId = collectCardId;

  String? _disburseAccountNumber;
  String? get disburseAccountNumber => _$this._disburseAccountNumber;
  set disburseAccountNumber(String? disburseAccountNumber) =>
      _$this._disburseAccountNumber = disburseAccountNumber;

  String? _disbursePayoutId;
  String? get disbursePayoutId => _$this._disbursePayoutId;
  set disbursePayoutId(String? disbursePayoutId) =>
      _$this._disbursePayoutId = disbursePayoutId;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  bool? _singleCollection;
  bool? get singleCollection => _$this._singleCollection;
  set singleCollection(bool? singleCollection) =>
      _$this._singleCollection = singleCollection;

  String? _months;
  String? get months => _$this._months;
  set months(String? months) => _$this._months = months;

  String? _monthlyPayment;
  String? get monthlyPayment => _$this._monthlyPayment;
  set monthlyPayment(String? monthlyPayment) =>
      _$this._monthlyPayment = monthlyPayment;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyAdvancesRecordBuilder() {
    MyAdvancesRecord._initializeBuilder(this);
  }

  MyAdvancesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _amountPayable = $v.amountPayable;
      _beneficiaryId = $v.beneficiaryId;
      _billingCycle = $v.billingCycle;
      _interestPercentage = $v.interestPercentage;
      _invoiceId = $v.invoiceId;
      _senderId = $v.senderId;
      _collectCardNumber = $v.collectCardNumber;
      _collectCardId = $v.collectCardId;
      _disburseAccountNumber = $v.disburseAccountNumber;
      _disbursePayoutId = $v.disbursePayoutId;
      _status = $v.status;
      _singleCollection = $v.singleCollection;
      _months = $v.months;
      _monthlyPayment = $v.monthlyPayment;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyAdvancesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyAdvancesRecord;
  }

  @override
  void update(void Function(MyAdvancesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyAdvancesRecord build() => _build();

  _$MyAdvancesRecord _build() {
    final _$result = _$v ??
        new _$MyAdvancesRecord._(
            amount: amount,
            amountPayable: amountPayable,
            beneficiaryId: beneficiaryId,
            billingCycle: billingCycle,
            interestPercentage: interestPercentage,
            invoiceId: invoiceId,
            senderId: senderId,
            collectCardNumber: collectCardNumber,
            collectCardId: collectCardId,
            disburseAccountNumber: disburseAccountNumber,
            disbursePayoutId: disbursePayoutId,
            status: status,
            singleCollection: singleCollection,
            months: months,
            monthlyPayment: monthlyPayment,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
