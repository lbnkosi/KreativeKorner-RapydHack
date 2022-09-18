// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_loans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyLoansRecord> _$myLoansRecordSerializer =
    new _$MyLoansRecordSerializer();

class _$MyLoansRecordSerializer implements StructuredSerializer<MyLoansRecord> {
  @override
  final Iterable<Type> types = const [MyLoansRecord, _$MyLoansRecord];
  @override
  final String wireName = 'MyLoansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyLoansRecord object,
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
    value = object.id;
    if (value != null) {
      result
        ..add('id')
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
    value = object.monthlyPayment;
    if (value != null) {
      result
        ..add('monthly_payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.months;
    if (value != null) {
      result
        ..add('months')
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
    value = object.productId;
    if (value != null) {
      result
        ..add('product_id')
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  MyLoansRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyLoansRecordBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
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
        case 'monthly_payment':
          result.monthlyPayment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'months':
          result.months = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'plan_id':
          result.planId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sender_id':
          result.senderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$MyLoansRecord extends MyLoansRecord {
  @override
  final String? amount;
  @override
  final String? amountPayable;
  @override
  final String? beneficiaryId;
  @override
  final String? billingCycle;
  @override
  final String? collectCardId;
  @override
  final String? disburseAccountNumber;
  @override
  final String? disbursePayoutId;
  @override
  final String? id;
  @override
  final String? interestPercentage;
  @override
  final String? invoiceId;
  @override
  final String? monthlyPayment;
  @override
  final String? months;
  @override
  final String? planId;
  @override
  final String? productId;
  @override
  final String? senderId;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyLoansRecord([void Function(MyLoansRecordBuilder)? updates]) =>
      (new MyLoansRecordBuilder()..update(updates))._build();

  _$MyLoansRecord._(
      {this.amount,
      this.amountPayable,
      this.beneficiaryId,
      this.billingCycle,
      this.collectCardId,
      this.disburseAccountNumber,
      this.disbursePayoutId,
      this.id,
      this.interestPercentage,
      this.invoiceId,
      this.monthlyPayment,
      this.months,
      this.planId,
      this.productId,
      this.senderId,
      this.status,
      this.ffRef})
      : super._();

  @override
  MyLoansRecord rebuild(void Function(MyLoansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyLoansRecordBuilder toBuilder() => new MyLoansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyLoansRecord &&
        amount == other.amount &&
        amountPayable == other.amountPayable &&
        beneficiaryId == other.beneficiaryId &&
        billingCycle == other.billingCycle &&
        collectCardId == other.collectCardId &&
        disburseAccountNumber == other.disburseAccountNumber &&
        disbursePayoutId == other.disbursePayoutId &&
        id == other.id &&
        interestPercentage == other.interestPercentage &&
        invoiceId == other.invoiceId &&
        monthlyPayment == other.monthlyPayment &&
        months == other.months &&
        planId == other.planId &&
        productId == other.productId &&
        senderId == other.senderId &&
        status == other.status &&
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
                                                                        0,
                                                                        amount
                                                                            .hashCode),
                                                                    amountPayable
                                                                        .hashCode),
                                                                beneficiaryId
                                                                    .hashCode),
                                                            billingCycle
                                                                .hashCode),
                                                        collectCardId.hashCode),
                                                    disburseAccountNumber
                                                        .hashCode),
                                                disbursePayoutId.hashCode),
                                            id.hashCode),
                                        interestPercentage.hashCode),
                                    invoiceId.hashCode),
                                monthlyPayment.hashCode),
                            months.hashCode),
                        planId.hashCode),
                    productId.hashCode),
                senderId.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyLoansRecord')
          ..add('amount', amount)
          ..add('amountPayable', amountPayable)
          ..add('beneficiaryId', beneficiaryId)
          ..add('billingCycle', billingCycle)
          ..add('collectCardId', collectCardId)
          ..add('disburseAccountNumber', disburseAccountNumber)
          ..add('disbursePayoutId', disbursePayoutId)
          ..add('id', id)
          ..add('interestPercentage', interestPercentage)
          ..add('invoiceId', invoiceId)
          ..add('monthlyPayment', monthlyPayment)
          ..add('months', months)
          ..add('planId', planId)
          ..add('productId', productId)
          ..add('senderId', senderId)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyLoansRecordBuilder
    implements Builder<MyLoansRecord, MyLoansRecordBuilder> {
  _$MyLoansRecord? _$v;

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

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _interestPercentage;
  String? get interestPercentage => _$this._interestPercentage;
  set interestPercentage(String? interestPercentage) =>
      _$this._interestPercentage = interestPercentage;

  String? _invoiceId;
  String? get invoiceId => _$this._invoiceId;
  set invoiceId(String? invoiceId) => _$this._invoiceId = invoiceId;

  String? _monthlyPayment;
  String? get monthlyPayment => _$this._monthlyPayment;
  set monthlyPayment(String? monthlyPayment) =>
      _$this._monthlyPayment = monthlyPayment;

  String? _months;
  String? get months => _$this._months;
  set months(String? months) => _$this._months = months;

  String? _planId;
  String? get planId => _$this._planId;
  set planId(String? planId) => _$this._planId = planId;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _senderId;
  String? get senderId => _$this._senderId;
  set senderId(String? senderId) => _$this._senderId = senderId;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyLoansRecordBuilder() {
    MyLoansRecord._initializeBuilder(this);
  }

  MyLoansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _amountPayable = $v.amountPayable;
      _beneficiaryId = $v.beneficiaryId;
      _billingCycle = $v.billingCycle;
      _collectCardId = $v.collectCardId;
      _disburseAccountNumber = $v.disburseAccountNumber;
      _disbursePayoutId = $v.disbursePayoutId;
      _id = $v.id;
      _interestPercentage = $v.interestPercentage;
      _invoiceId = $v.invoiceId;
      _monthlyPayment = $v.monthlyPayment;
      _months = $v.months;
      _planId = $v.planId;
      _productId = $v.productId;
      _senderId = $v.senderId;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyLoansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyLoansRecord;
  }

  @override
  void update(void Function(MyLoansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyLoansRecord build() => _build();

  _$MyLoansRecord _build() {
    final _$result = _$v ??
        new _$MyLoansRecord._(
            amount: amount,
            amountPayable: amountPayable,
            beneficiaryId: beneficiaryId,
            billingCycle: billingCycle,
            collectCardId: collectCardId,
            disburseAccountNumber: disburseAccountNumber,
            disbursePayoutId: disbursePayoutId,
            id: id,
            interestPercentage: interestPercentage,
            invoiceId: invoiceId,
            monthlyPayment: monthlyPayment,
            months: months,
            planId: planId,
            productId: productId,
            senderId: senderId,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
