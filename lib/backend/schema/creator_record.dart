import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'creator_record.g.dart';

abstract class CreatorRecord
    implements Built<CreatorRecord, CreatorRecordBuilder> {
  static Serializer<CreatorRecord> get serializer => _$creatorRecordSerializer;

  String? get name;

  String? get surname;

  String? get email;

  String? get phone;

  String? get country;

  @BuiltValueField(wireName: 'user_type')
  String? get userType;

  String? get points;

  @BuiltValueField(wireName: 'ref_id')
  String? get refId;

  @BuiltValueField(wireName: 'wallet_amount')
  String? get walletAmount;

  @BuiltValueField(wireName: 'wallet_id')
  String? get walletId;

  @BuiltValueField(wireName: 'customer_id')
  String? get customerId;

  @BuiltValueField(wireName: 'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CreatorRecordBuilder builder) => builder
    ..name = ''
    ..surname = ''
    ..email = ''
    ..phone = ''
    ..country = ''
    ..userType = ''
    ..points = ''
    ..refId = ''
    ..walletAmount = ''
    ..walletId = ''
    ..customerId = ''
    ..paymentMethod = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('creator');

  static Stream<CreatorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CreatorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static CreatorRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      CreatorRecord(
        (c) => c
          ..name = snapshot.data['name']
          ..surname = snapshot.data['surname']
          ..email = snapshot.data['email']
          ..phone = snapshot.data['phone']
          ..country = snapshot.data['country']
          ..userType = snapshot.data['user_type']
          ..points = snapshot.data['points']
          ..refId = snapshot.data['ref_id']
          ..walletAmount = snapshot.data['wallet_amount']
          ..walletId = snapshot.data['wallet_id']
          ..customerId = snapshot.data['customer_id']
          ..paymentMethod = snapshot.data['payment_method']
          ..ffRef = CreatorRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<CreatorRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'creator',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  CreatorRecord._();
  factory CreatorRecord([void Function(CreatorRecordBuilder) updates]) =
      _$CreatorRecord;

  static CreatorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCreatorRecordData({
  String? name,
  String? surname,
  String? email,
  String? phone,
  String? country,
  String? userType,
  String? points,
  String? refId,
  String? walletAmount,
  String? walletId,
  String? customerId,
  String? paymentMethod,
}) {
  final firestoreData = serializers.toFirestore(
    CreatorRecord.serializer,
    CreatorRecord(
      (c) => c
        ..name = name
        ..surname = surname
        ..email = email
        ..phone = phone
        ..country = country
        ..userType = userType
        ..points = points
        ..refId = refId
        ..walletAmount = walletAmount
        ..walletId = walletId
        ..customerId = customerId
        ..paymentMethod = paymentMethod,
    ),
  );

  return firestoreData;
}
