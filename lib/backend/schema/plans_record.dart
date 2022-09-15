import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'plans_record.g.dart';

abstract class PlansRecord implements Built<PlansRecord, PlansRecordBuilder> {
  static Serializer<PlansRecord> get serializer => _$plansRecordSerializer;

  @BuiltValueField(wireName: 'plan_amount')
  String? get planAmount;

  @BuiltValueField(wireName: 'plan_currency')
  String? get planCurrency;

  @BuiltValueField(wireName: 'plan_id')
  String? get planId;

  @BuiltValueField(wireName: 'plan_type')
  String? get planType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlansRecordBuilder builder) => builder
    ..planAmount = ''
    ..planCurrency = ''
    ..planId = ''
    ..planType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plans');

  static Stream<PlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static PlansRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => PlansRecord(
        (c) => c
          ..planAmount = snapshot.data['plan_amount']
          ..planCurrency = snapshot.data['plan_currency']
          ..planId = snapshot.data['plan_id']
          ..planType = snapshot.data['plan_type']
          ..ffRef = PlansRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PlansRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'plans',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  PlansRecord._();
  factory PlansRecord([void Function(PlansRecordBuilder) updates]) =
      _$PlansRecord;

  static PlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlansRecordData({
  String? planAmount,
  String? planCurrency,
  String? planId,
  String? planType,
}) {
  final firestoreData = serializers.toFirestore(
    PlansRecord.serializer,
    PlansRecord(
      (p) => p
        ..planAmount = planAmount
        ..planCurrency = planCurrency
        ..planId = planId
        ..planType = planType,
    ),
  );

  return firestoreData;
}
