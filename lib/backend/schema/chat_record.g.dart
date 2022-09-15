// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatRecord> _$chatRecordSerializer = new _$ChatRecordSerializer();

class _$ChatRecordSerializer implements StructuredSerializer<ChatRecord> {
  @override
  final Iterable<Type> types = const [ChatRecord, _$ChatRecord];
  @override
  final String wireName = 'ChatRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.currentlyViewing;
    if (value != null) {
      result
        ..add('currently_viewing')
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
  ChatRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
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
        case 'currently_viewing':
          result.currentlyViewing = serializers.deserialize(value,
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

class _$ChatRecord extends ChatRecord {
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? currentlyViewing;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatRecord([void Function(ChatRecordBuilder)? updates]) =>
      (new ChatRecordBuilder()..update(updates))._build();

  _$ChatRecord._(
      {this.email, this.name, this.surname, this.currentlyViewing, this.ffRef})
      : super._();

  @override
  ChatRecord rebuild(void Function(ChatRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRecordBuilder toBuilder() => new ChatRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRecord &&
        email == other.email &&
        name == other.name &&
        surname == other.surname &&
        currentlyViewing == other.currentlyViewing &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), name.hashCode), surname.hashCode),
            currentlyViewing.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatRecord')
          ..add('email', email)
          ..add('name', name)
          ..add('surname', surname)
          ..add('currentlyViewing', currentlyViewing)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatRecordBuilder implements Builder<ChatRecord, ChatRecordBuilder> {
  _$ChatRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _surname;
  String? get surname => _$this._surname;
  set surname(String? surname) => _$this._surname = surname;

  String? _currentlyViewing;
  String? get currentlyViewing => _$this._currentlyViewing;
  set currentlyViewing(String? currentlyViewing) =>
      _$this._currentlyViewing = currentlyViewing;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatRecordBuilder() {
    ChatRecord._initializeBuilder(this);
  }

  ChatRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _name = $v.name;
      _surname = $v.surname;
      _currentlyViewing = $v.currentlyViewing;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRecord;
  }

  @override
  void update(void Function(ChatRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatRecord build() => _build();

  _$ChatRecord _build() {
    final _$result = _$v ??
        new _$ChatRecord._(
            email: email,
            name: name,
            surname: surname,
            currentlyViewing: currentlyViewing,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
