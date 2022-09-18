// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apartments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApartmentsRecord> _$apartmentsRecordSerializer =
    new _$ApartmentsRecordSerializer();

class _$ApartmentsRecordSerializer
    implements StructuredSerializer<ApartmentsRecord> {
  @override
  final Iterable<Type> types = const [ApartmentsRecord, _$ApartmentsRecord];
  @override
  final String wireName = 'ApartmentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApartmentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
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
    value = object.reviews;
    if (value != null) {
      result
        ..add('reviews')
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
    value = object.address;
    if (value != null) {
      result
        ..add('address')
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
    value = object.interval;
    if (value != null) {
      result
        ..add('interval')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayPrice;
    if (value != null) {
      result
        ..add('display_price')
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
  ApartmentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApartmentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviews':
          result.reviews = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'interval':
          result.interval = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_price':
          result.displayPrice = serializers.deserialize(value,
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

class _$ApartmentsRecord extends ApartmentsRecord {
  @override
  final String? name;
  @override
  final String? id;
  @override
  final String? reviews;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final String? price;
  @override
  final String? interval;
  @override
  final String? image;
  @override
  final String? displayPrice;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ApartmentsRecord(
          [void Function(ApartmentsRecordBuilder)? updates]) =>
      (new ApartmentsRecordBuilder()..update(updates))._build();

  _$ApartmentsRecord._(
      {this.name,
      this.id,
      this.reviews,
      this.description,
      this.address,
      this.price,
      this.interval,
      this.image,
      this.displayPrice,
      this.ffRef})
      : super._();

  @override
  ApartmentsRecord rebuild(void Function(ApartmentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApartmentsRecordBuilder toBuilder() =>
      new ApartmentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApartmentsRecord &&
        name == other.name &&
        id == other.id &&
        reviews == other.reviews &&
        description == other.description &&
        address == other.address &&
        price == other.price &&
        interval == other.interval &&
        image == other.image &&
        displayPrice == other.displayPrice &&
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
                                $jc($jc($jc(0, name.hashCode), id.hashCode),
                                    reviews.hashCode),
                                description.hashCode),
                            address.hashCode),
                        price.hashCode),
                    interval.hashCode),
                image.hashCode),
            displayPrice.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApartmentsRecord')
          ..add('name', name)
          ..add('id', id)
          ..add('reviews', reviews)
          ..add('description', description)
          ..add('address', address)
          ..add('price', price)
          ..add('interval', interval)
          ..add('image', image)
          ..add('displayPrice', displayPrice)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ApartmentsRecordBuilder
    implements Builder<ApartmentsRecord, ApartmentsRecordBuilder> {
  _$ApartmentsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _reviews;
  String? get reviews => _$this._reviews;
  set reviews(String? reviews) => _$this._reviews = reviews;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _interval;
  String? get interval => _$this._interval;
  set interval(String? interval) => _$this._interval = interval;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _displayPrice;
  String? get displayPrice => _$this._displayPrice;
  set displayPrice(String? displayPrice) => _$this._displayPrice = displayPrice;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ApartmentsRecordBuilder() {
    ApartmentsRecord._initializeBuilder(this);
  }

  ApartmentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _reviews = $v.reviews;
      _description = $v.description;
      _address = $v.address;
      _price = $v.price;
      _interval = $v.interval;
      _image = $v.image;
      _displayPrice = $v.displayPrice;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApartmentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApartmentsRecord;
  }

  @override
  void update(void Function(ApartmentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApartmentsRecord build() => _build();

  _$ApartmentsRecord _build() {
    final _$result = _$v ??
        new _$ApartmentsRecord._(
            name: name,
            id: id,
            reviews: reviews,
            description: description,
            address: address,
            price: price,
            interval: interval,
            image: image,
            displayPrice: displayPrice,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
