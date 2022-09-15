import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'loan_plans_record.g.dart';

abstract class LoanPlansRecord
    implements Built<LoanPlansRecord, LoanPlansRecordBuilder> {
  static Serializer<LoanPlansRecord> get serializer =>
      _$loanPlansRecordSerializer;

  @BuiltValueField(wireName: 'interest_paid')
  String? get interestPaid;

  @BuiltValueField(wireName: 'loan_amount')
  String? get loanAmount;

  @BuiltValueField(wireName: 'loan_id')
  String? get loanId;

  @BuiltValueField(wireName: 'loan_interest')
  String? get loanInterest;

  @BuiltValueField(wireName: 'monthly_payments')
  String? get monthlyPayments;

  String? get term;

  @BuiltValueField(wireName: 'total_repayment')
  String? get totalRepayment;

  @BuiltValueField(wireName: 'plan_id')
  String? get planId;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LoanPlansRecordBuilder builder) => builder
    ..interestPaid = ''
    ..loanAmount = ''
    ..loanId = ''
    ..loanInterest = ''
    ..monthlyPayments = ''
    ..term = ''
    ..totalRepayment = ''
    ..planId = ''
    ..productId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('loan_plans');

  static Stream<LoanPlansRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LoanPlansRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static LoanPlansRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      LoanPlansRecord(
        (c) => c
          ..interestPaid = snapshot.data['interest_paid']
          ..loanAmount = snapshot.data['loan_amount']
          ..loanId = snapshot.data['loan_id']
          ..loanInterest = snapshot.data['loan_interest']
          ..monthlyPayments = snapshot.data['monthly_payments']
          ..term = snapshot.data['term']
          ..totalRepayment = snapshot.data['total_repayment']
          ..planId = snapshot.data['plan_id']
          ..productId = snapshot.data['product_id']
          ..ffRef = LoanPlansRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<LoanPlansRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'loan_plans',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  LoanPlansRecord._();
  factory LoanPlansRecord([void Function(LoanPlansRecordBuilder) updates]) =
      _$LoanPlansRecord;

  static LoanPlansRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLoanPlansRecordData({
  String? interestPaid,
  String? loanAmount,
  String? loanId,
  String? loanInterest,
  String? monthlyPayments,
  String? term,
  String? totalRepayment,
  String? planId,
  String? productId,
}) {
  final firestoreData = serializers.toFirestore(
    LoanPlansRecord.serializer,
    LoanPlansRecord(
      (l) => l
        ..interestPaid = interestPaid
        ..loanAmount = loanAmount
        ..loanId = loanId
        ..loanInterest = loanInterest
        ..monthlyPayments = monthlyPayments
        ..term = term
        ..totalRepayment = totalRepayment
        ..planId = planId
        ..productId = productId,
    ),
  );

  return firestoreData;
}
