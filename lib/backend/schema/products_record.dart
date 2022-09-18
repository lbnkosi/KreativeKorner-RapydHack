import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  int? get price;

  @BuiltValueField(wireName: 'product_description')
  String? get productDescription;

  @BuiltValueField(wireName: 'product_id')
  String? get productId;

  @BuiltValueField(wireName: 'product_name')
  String? get productName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..price = 0
    ..productDescription = ''
    ..productId = ''
    ..productName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('products')
          : FirebaseFirestore.instance.collectionGroup('products');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('products').doc();

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductsRecordData({
  int? price,
  String? productDescription,
  String? productId,
  String? productName,
}) {
  final firestoreData = serializers.toFirestore(
    ProductsRecord.serializer,
    ProductsRecord(
      (p) => p
        ..price = price
        ..productDescription = productDescription
        ..productId = productId
        ..productName = productName,
    ),
  );

  return firestoreData;
}
