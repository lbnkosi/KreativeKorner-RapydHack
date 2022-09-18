// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckoutRecord> _$checkoutRecordSerializer =
    new _$CheckoutRecordSerializer();

class _$CheckoutRecordSerializer
    implements StructuredSerializer<CheckoutRecord> {
  @override
  final Iterable<Type> types = const [CheckoutRecord, _$CheckoutRecord];
  @override
  final String wireName = 'CheckoutRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CheckoutRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.checkoutId;
    if (value != null) {
      result
        ..add('checkout_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.checkoutUrl;
    if (value != null) {
      result
        ..add('checkout_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
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
    value = object.checkoutType;
    if (value != null) {
      result
        ..add('checkout_type')
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
    value = object.paid;
    if (value != null) {
      result
        ..add('paid')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customer_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userType;
    if (value != null) {
      result
        ..add('user_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.collectionName;
    if (value != null) {
      result
        ..add('collection_name')
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
  CheckoutRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckoutRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'checkout_id':
          result.checkoutId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkout_url':
          result.checkoutUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'product_id':
          result.productId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'checkout_type':
          result.checkoutType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'merchant_reference_id':
          result.merchantReferenceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'customer_id':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_type':
          result.userType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'collection_name':
          result.collectionName = serializers.deserialize(value,
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

class _$CheckoutRecord extends CheckoutRecord {
  @override
  final String? checkoutId;
  @override
  final String? checkoutUrl;
  @override
  final String? price;
  @override
  final String? productId;
  @override
  final String? checkoutType;
  @override
  final String? merchantReferenceId;
  @override
  final bool? paid;
  @override
  final String? customerId;
  @override
  final String? email;
  @override
  final String? userType;
  @override
  final String? collectionName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CheckoutRecord([void Function(CheckoutRecordBuilder)? updates]) =>
      (new CheckoutRecordBuilder()..update(updates))._build();

  _$CheckoutRecord._(
      {this.checkoutId,
      this.checkoutUrl,
      this.price,
      this.productId,
      this.checkoutType,
      this.merchantReferenceId,
      this.paid,
      this.customerId,
      this.email,
      this.userType,
      this.collectionName,
      this.ffRef})
      : super._();

  @override
  CheckoutRecord rebuild(void Function(CheckoutRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckoutRecordBuilder toBuilder() =>
      new CheckoutRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckoutRecord &&
        checkoutId == other.checkoutId &&
        checkoutUrl == other.checkoutUrl &&
        price == other.price &&
        productId == other.productId &&
        checkoutType == other.checkoutType &&
        merchantReferenceId == other.merchantReferenceId &&
        paid == other.paid &&
        customerId == other.customerId &&
        email == other.email &&
        userType == other.userType &&
        collectionName == other.collectionName &&
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
                                            $jc($jc(0, checkoutId.hashCode),
                                                checkoutUrl.hashCode),
                                            price.hashCode),
                                        productId.hashCode),
                                    checkoutType.hashCode),
                                merchantReferenceId.hashCode),
                            paid.hashCode),
                        customerId.hashCode),
                    email.hashCode),
                userType.hashCode),
            collectionName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CheckoutRecord')
          ..add('checkoutId', checkoutId)
          ..add('checkoutUrl', checkoutUrl)
          ..add('price', price)
          ..add('productId', productId)
          ..add('checkoutType', checkoutType)
          ..add('merchantReferenceId', merchantReferenceId)
          ..add('paid', paid)
          ..add('customerId', customerId)
          ..add('email', email)
          ..add('userType', userType)
          ..add('collectionName', collectionName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CheckoutRecordBuilder
    implements Builder<CheckoutRecord, CheckoutRecordBuilder> {
  _$CheckoutRecord? _$v;

  String? _checkoutId;
  String? get checkoutId => _$this._checkoutId;
  set checkoutId(String? checkoutId) => _$this._checkoutId = checkoutId;

  String? _checkoutUrl;
  String? get checkoutUrl => _$this._checkoutUrl;
  set checkoutUrl(String? checkoutUrl) => _$this._checkoutUrl = checkoutUrl;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _productId;
  String? get productId => _$this._productId;
  set productId(String? productId) => _$this._productId = productId;

  String? _checkoutType;
  String? get checkoutType => _$this._checkoutType;
  set checkoutType(String? checkoutType) => _$this._checkoutType = checkoutType;

  String? _merchantReferenceId;
  String? get merchantReferenceId => _$this._merchantReferenceId;
  set merchantReferenceId(String? merchantReferenceId) =>
      _$this._merchantReferenceId = merchantReferenceId;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _userType;
  String? get userType => _$this._userType;
  set userType(String? userType) => _$this._userType = userType;

  String? _collectionName;
  String? get collectionName => _$this._collectionName;
  set collectionName(String? collectionName) =>
      _$this._collectionName = collectionName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CheckoutRecordBuilder() {
    CheckoutRecord._initializeBuilder(this);
  }

  CheckoutRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _checkoutId = $v.checkoutId;
      _checkoutUrl = $v.checkoutUrl;
      _price = $v.price;
      _productId = $v.productId;
      _checkoutType = $v.checkoutType;
      _merchantReferenceId = $v.merchantReferenceId;
      _paid = $v.paid;
      _customerId = $v.customerId;
      _email = $v.email;
      _userType = $v.userType;
      _collectionName = $v.collectionName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckoutRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CheckoutRecord;
  }

  @override
  void update(void Function(CheckoutRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CheckoutRecord build() => _build();

  _$CheckoutRecord _build() {
    final _$result = _$v ??
        new _$CheckoutRecord._(
            checkoutId: checkoutId,
            checkoutUrl: checkoutUrl,
            price: price,
            productId: productId,
            checkoutType: checkoutType,
            merchantReferenceId: merchantReferenceId,
            paid: paid,
            customerId: customerId,
            email: email,
            userType: userType,
            collectionName: collectionName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
