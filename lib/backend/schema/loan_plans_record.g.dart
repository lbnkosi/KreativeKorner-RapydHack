// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_plans_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoanPlansRecord> _$loanPlansRecordSerializer =
    new _$LoanPlansRecordSerializer();

class _$LoanPlansRecordSerializer
    implements StructuredSerializer<LoanPlansRecord> {
  @override
  final Iterable<Type> types = const [LoanPlansRecord, _$LoanPlansRecord];
  @override
  final String wireName = 'LoanPlansRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LoanPlansRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.interestPaid;
    if (value != null) {
      result
        ..add('interest_paid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanAmount;
    if (value != null) {
      result
        ..add('loan_amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanId;
    if (value != null) {
      result
        ..add('loan_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.loanInterest;
    if (value != null) {
      result
        ..add('loan_interest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.monthlyPayments;
    if (value != null) {
      result
        ..add('monthly_payments')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.term;
    if (value != null) {
      result
        ..add('term')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalRepayment;
    if (value != null) {
      result
        ..add('total_repayment')
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
  LoanPlansRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoanPlansRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'interest_paid':
          result.interestPaid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loan_amount':
          result.loanAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loan_id':
          result.loanId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'loan_interest':
          result.loanInterest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'monthly_payments':
          result.monthlyPayments = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_repayment':
          result.totalRepayment = serializers.deserialize(value,
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

class _$LoanPlansRecord extends LoanPlansRecord {
  @override
  final String? interestPaid;
  @override
  final String? loanAmount;
  @override
  final String? loanId;
  @override
  final String? loanInterest;
  @override
  final String? monthlyPayments;
  @override
  final String? term;
  @override
  final String? totalRepayment;
  @override
  final String? planId;
  @override
  final String? productId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LoanPlansRecord([void Function(LoanPlansRecordBuilder)? updates]) =>
      (new LoanPlansRecordBuilder()..update(updates))._build();

  _$LoanPlansRecord._(
      {this.interestPaid,
      this.loanAmount,
      this.loanId,
      this.loanInterest,
      this.monthlyPayments,
      this.term,
      this.totalRepayment,
      this.planId,
      this.productId,
      this.ffRef})
      : super._();

  @override
  LoanPlansRecord rebuild(void Function(LoanPlansRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoanPlansRecordBuilder toBuilder() =>
      new LoanPlansRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoanPlansRecord &&
        interestPaid == other.interestPaid &&
        loanAmount == other.loanAmount &&
        loanId == other.loanId &&
        loanInterest == other.loanInterest &&
        monthlyPayments == other.monthlyPayments &&
        term == other.term &&
        totalRepayment == other.totalRepayment &&
        planId == other.planId &&
        productId == other.productId &&
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
                                    $jc($jc(0, interestPaid.hashCode),
                                        loanAmount.hashCode),
                                    loanId.hashCode),
                                loanInterest.hashCode),
                            monthlyPayments.hashCode),
                        term.hashCode),
                    totalRepayment.hashCode),
                planId.hashCode),
            productId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoanPlansRecord')
          ..add('interestPaid', interestPaid)
          ..add('loanAmount', loanAmount)
          ..add('loanId', loanId)
          ..add('loanInterest', loanInterest)
          ..add('monthlyPayments', monthlyPayments)
          ..add('term', term)
          ..add('totalRepayment', totalRepayment)
          ..add('planId', planId)
          ..add('productId', productId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LoanPlansRecordBuilder
    implements Builder<LoanPlansRecord, LoanPlansRecordBuilder> {
  _$LoanPlansRecord? _$v;

  String? _interestPaid;
  String? get interestPaid => _$this._interestPaid;
  set interestPaid(String? interestPaid) => _$this._interestPaid = interestPaid;

  String? _loanAmount;
  String? get loanAmount => _$this._loanAmount;
  set loanAmount(String? loanAmount) => _$this._loanAmount = loanAmount;

  String? _loanId;
  String? get loanId => _$this._loanId;
  set loanId(String? loanId) => _$this._loanId = loanId;

  String? _loanInterest;
  String? get loanInterest => _$this._loanInterest;
  set loanInterest(String? loanInterest) => _$this._loanInterest = loanInterest;

  String? _monthlyPayments;
  String? get monthlyPayments => _$this._monthlyPayments;
  set monthlyPayments(String? monthlyPayments) =>
      _$this._monthlyPayments = monthlyPayments;

  String? _term;
  String? get term => _$this._term;
  set term(String? term) => _$this._term = term;

  String? _totalRepayment;
  String? get totalRepayment => _$this._totalRepayment;
  set totalRepayment(String? totalRepayment) =>
      _$this._totalRepayment = totalRepayment;

  String? _planId;
  String? get planId => _$this._planId;
  set planId(String? planId) => _$this._planId = planId;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LoanPlansRecordBuilder() {
    LoanPlansRecord._initializeBuilder(this);
  }

  LoanPlansRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _interestPaid = $v.interestPaid;
      _loanAmount = $v.loanAmount;
      _loanId = $v.loanId;
      _loanInterest = $v.loanInterest;
      _monthlyPayments = $v.monthlyPayments;
      _term = $v.term;
      _totalRepayment = $v.totalRepayment;
      _planId = $v.planId;
      _productId = $v.productId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoanPlansRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoanPlansRecord;
  }

  @override
  void update(void Function(LoanPlansRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoanPlansRecord build() => _build();

  _$LoanPlansRecord _build() {
    final _$result = _$v ??
        new _$LoanPlansRecord._(
            interestPaid: interestPaid,
            loanAmount: loanAmount,
            loanId: loanId,
            loanInterest: loanInterest,
            monthlyPayments: monthlyPayments,
            term: term,
            totalRepayment: totalRepayment,
            planId: planId,
            productId: productId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
