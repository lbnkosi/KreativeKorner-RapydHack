// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapyd_embed_services_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RapydEmbedServicesRecord> _$rapydEmbedServicesRecordSerializer =
    new _$RapydEmbedServicesRecordSerializer();

class _$RapydEmbedServicesRecordSerializer
    implements StructuredSerializer<RapydEmbedServicesRecord> {
  @override
  final Iterable<Type> types = const [
    RapydEmbedServicesRecord,
    _$RapydEmbedServicesRecord
  ];
  @override
  final String wireName = 'RapydEmbedServicesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RapydEmbedServicesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isSinglePayment;
    if (value != null) {
      result
        ..add('is_single_payment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.partners;
    if (value != null) {
      result
        ..add('partners')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subCategory;
    if (value != null) {
      result
        ..add('sub_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.term;
    if (value != null) {
      result
        ..add('term')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.serviceId;
    if (value != null) {
      result
        ..add('service_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.interntional;
    if (value != null) {
      result
        ..add('interntional')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.currencySymbol;
    if (value != null) {
      result
        ..add('currency_symbol')
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
  RapydEmbedServicesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RapydEmbedServicesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_single_payment':
          result.isSinglePayment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'partners':
          result.partners.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sub_category':
          result.subCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'service_id':
          result.serviceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interntional':
          result.interntional = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'currency_symbol':
          result.currencySymbol = serializers.deserialize(value,
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

class _$RapydEmbedServicesRecord extends RapydEmbedServicesRecord {
  @override
  final String? category;
  @override
  final String? country;
  @override
  final String? currency;
  @override
  final String? description;
  @override
  final bool? isSinglePayment;
  @override
  final String? name;
  @override
  final BuiltList<String>? partners;
  @override
  final int? price;
  @override
  final String? subCategory;
  @override
  final int? term;
  @override
  final String? serviceId;
  @override
  final bool? interntional;
  @override
  final String? currencySymbol;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RapydEmbedServicesRecord(
          [void Function(RapydEmbedServicesRecordBuilder)? updates]) =>
      (new RapydEmbedServicesRecordBuilder()..update(updates))._build();

  _$RapydEmbedServicesRecord._(
      {this.category,
      this.country,
      this.currency,
      this.description,
      this.isSinglePayment,
      this.name,
      this.partners,
      this.price,
      this.subCategory,
      this.term,
      this.serviceId,
      this.interntional,
      this.currencySymbol,
      this.ffRef})
      : super._();

  @override
  RapydEmbedServicesRecord rebuild(
          void Function(RapydEmbedServicesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RapydEmbedServicesRecordBuilder toBuilder() =>
      new RapydEmbedServicesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RapydEmbedServicesRecord &&
        category == other.category &&
        country == other.country &&
        currency == other.currency &&
        description == other.description &&
        isSinglePayment == other.isSinglePayment &&
        name == other.name &&
        partners == other.partners &&
        price == other.price &&
        subCategory == other.subCategory &&
        term == other.term &&
        serviceId == other.serviceId &&
        interntional == other.interntional &&
        currencySymbol == other.currencySymbol &&
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
                                                        $jc(0,
                                                            category.hashCode),
                                                        country.hashCode),
                                                    currency.hashCode),
                                                description.hashCode),
                                            isSinglePayment.hashCode),
                                        name.hashCode),
                                    partners.hashCode),
                                price.hashCode),
                            subCategory.hashCode),
                        term.hashCode),
                    serviceId.hashCode),
                interntional.hashCode),
            currencySymbol.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RapydEmbedServicesRecord')
          ..add('category', category)
          ..add('country', country)
          ..add('currency', currency)
          ..add('description', description)
          ..add('isSinglePayment', isSinglePayment)
          ..add('name', name)
          ..add('partners', partners)
          ..add('price', price)
          ..add('subCategory', subCategory)
          ..add('term', term)
          ..add('serviceId', serviceId)
          ..add('interntional', interntional)
          ..add('currencySymbol', currencySymbol)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RapydEmbedServicesRecordBuilder
    implements
        Builder<RapydEmbedServicesRecord, RapydEmbedServicesRecordBuilder> {
  _$RapydEmbedServicesRecord? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isSinglePayment;
  bool? get isSinglePayment => _$this._isSinglePayment;
  set isSinglePayment(bool? isSinglePayment) =>
      _$this._isSinglePayment = isSinglePayment;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _partners;
  ListBuilder<String> get partners =>
      _$this._partners ??= new ListBuilder<String>();
  set partners(ListBuilder<String>? partners) => _$this._partners = partners;

  int? _price;
  int? get price => _$this._price;
  set price(int? price) => _$this._price = price;

  String? _subCategory;
  String? get subCategory => _$this._subCategory;
  set subCategory(String? subCategory) => _$this._subCategory = subCategory;

  int? _term;
  int? get term => _$this._term;
  set term(int? term) => _$this._term = term;

  String? _serviceId;
  String? get serviceId => _$this._serviceId;
  set serviceId(String? serviceId) => _$this._serviceId = serviceId;

  bool? _interntional;
  bool? get interntional => _$this._interntional;
  set interntional(bool? interntional) => _$this._interntional = interntional;

  String? _currencySymbol;
  String? get currencySymbol => _$this._currencySymbol;
  set currencySymbol(String? currencySymbol) =>
      _$this._currencySymbol = currencySymbol;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RapydEmbedServicesRecordBuilder() {
    RapydEmbedServicesRecord._initializeBuilder(this);
  }

  RapydEmbedServicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _country = $v.country;
      _currency = $v.currency;
      _description = $v.description;
      _isSinglePayment = $v.isSinglePayment;
      _name = $v.name;
      _partners = $v.partners?.toBuilder();
      _price = $v.price;
      _subCategory = $v.subCategory;
      _term = $v.term;
      _serviceId = $v.serviceId;
      _interntional = $v.interntional;
      _currencySymbol = $v.currencySymbol;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RapydEmbedServicesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RapydEmbedServicesRecord;
  }

  @override
  void update(void Function(RapydEmbedServicesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RapydEmbedServicesRecord build() => _build();

  _$RapydEmbedServicesRecord _build() {
    _$RapydEmbedServicesRecord _$result;
    try {
      _$result = _$v ??
          new _$RapydEmbedServicesRecord._(
              category: category,
              country: country,
              currency: currency,
              description: description,
              isSinglePayment: isSinglePayment,
              name: name,
              partners: _partners?.build(),
              price: price,
              subCategory: subCategory,
              term: term,
              serviceId: serviceId,
              interntional: interntional,
              currencySymbol: currencySymbol,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'partners';
        _partners?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RapydEmbedServicesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
