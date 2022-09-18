import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'apartments_record.g.dart';

abstract class ApartmentsRecord
    implements Built<ApartmentsRecord, ApartmentsRecordBuilder> {
  static Serializer<ApartmentsRecord> get serializer =>
      _$apartmentsRecordSerializer;

  String? get name;

  String? get id;

  String? get reviews;

  String? get description;

  String? get address;

  String? get price;

  String? get interval;

  String? get image;

  @BuiltValueField(wireName: 'display_price')
  String? get displayPrice;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ApartmentsRecordBuilder builder) => builder
    ..name = ''
    ..id = ''
    ..reviews = ''
    ..description = ''
    ..address = ''
    ..price = ''
    ..interval = ''
    ..image = ''
    ..displayPrice = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('apartments');

  static Stream<ApartmentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ApartmentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ApartmentsRecord._();
  factory ApartmentsRecord([void Function(ApartmentsRecordBuilder) updates]) =
      _$ApartmentsRecord;

  static ApartmentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createApartmentsRecordData({
  String? name,
  String? id,
  String? reviews,
  String? description,
  String? address,
  String? price,
  String? interval,
  String? image,
  String? displayPrice,
}) {
  final firestoreData = serializers.toFirestore(
    ApartmentsRecord.serializer,
    ApartmentsRecord(
      (a) => a
        ..name = name
        ..id = id
        ..reviews = reviews
        ..description = description
        ..address = address
        ..price = price
        ..interval = interval
        ..image = image
        ..displayPrice = displayPrice,
    ),
  );

  return firestoreData;
}
