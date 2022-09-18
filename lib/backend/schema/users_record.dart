import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

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

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
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
    ..paymentMethod = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static UsersRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => UsersRecord(
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
          ..displayName = snapshot.data['display_name']
          ..photoUrl = snapshot.data['photo_url']
          ..uid = snapshot.data['uid']
          ..createdTime = safeGet(() => DateTime.fromMillisecondsSinceEpoch(
              snapshot.data['created_time']))
          ..phoneNumber = snapshot.data['phone_number']
          ..ffRef = UsersRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<UsersRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'users',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
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
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
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
        ..paymentMethod = paymentMethod
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
