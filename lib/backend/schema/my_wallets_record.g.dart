// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_wallets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MyWalletsRecord> _$myWalletsRecordSerializer =
    new _$MyWalletsRecordSerializer();

class _$MyWalletsRecordSerializer
    implements StructuredSerializer<MyWalletsRecord> {
  @override
  final Iterable<Type> types = const [MyWalletsRecord, _$MyWalletsRecord];
  @override
  final String wireName = 'MyWalletsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MyWalletsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.walletAmount;
    if (value != null) {
      result
        ..add('wallet_amount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.holder;
    if (value != null) {
      result
        ..add('holder')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  MyWalletsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MyWalletsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'wallet_amount':
          result.walletAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'holder':
          result.holder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$MyWalletsRecord extends MyWalletsRecord {
  @override
  final int? walletAmount;
  @override
  final int? holder;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MyWalletsRecord([void Function(MyWalletsRecordBuilder)? updates]) =>
      (new MyWalletsRecordBuilder()..update(updates))._build();

  _$MyWalletsRecord._({this.walletAmount, this.holder, this.ffRef}) : super._();

  @override
  MyWalletsRecord rebuild(void Function(MyWalletsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MyWalletsRecordBuilder toBuilder() =>
      new MyWalletsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MyWalletsRecord &&
        walletAmount == other.walletAmount &&
        holder == other.holder &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, walletAmount.hashCode), holder.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MyWalletsRecord')
          ..add('walletAmount', walletAmount)
          ..add('holder', holder)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MyWalletsRecordBuilder
    implements Builder<MyWalletsRecord, MyWalletsRecordBuilder> {
  _$MyWalletsRecord? _$v;

  int? _walletAmount;
  int? get walletAmount => _$this._walletAmount;
  set walletAmount(int? walletAmount) => _$this._walletAmount = walletAmount;

  int? _holder;
  int? get holder => _$this._holder;
  set holder(int? holder) => _$this._holder = holder;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MyWalletsRecordBuilder() {
    MyWalletsRecord._initializeBuilder(this);
  }

  MyWalletsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _walletAmount = $v.walletAmount;
      _holder = $v.holder;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MyWalletsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MyWalletsRecord;
  }

  @override
  void update(void Function(MyWalletsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MyWalletsRecord build() => _build();

  _$MyWalletsRecord _build() {
    final _$result = _$v ??
        new _$MyWalletsRecord._(
            walletAmount: walletAmount, holder: holder, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
