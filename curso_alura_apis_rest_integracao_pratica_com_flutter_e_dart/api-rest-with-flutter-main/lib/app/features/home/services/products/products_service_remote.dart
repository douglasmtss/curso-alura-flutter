import 'package:app_test_fiap/app/core/network/response_types/response.dart';
import 'package:app_test_fiap/app/features/home/model/product_model.dart';
import 'package:app_test_fiap/app/features/home/services/products/products_service.dart';
import 'package:dio/dio.dart' as dio;

class ProductsServiceRemote implements ProductsService {
  dio.Dio get dioClient {
    final dioInstance = dio.Dio();

    dioInstance.options.baseUrl = 'https://api.escuelajs.co';

    return dioInstance;
  }

  @override
  Future<({List<ProductModel> products, Response result})> getProducts() async {
    final result = await dioClient.get('/api/v1/products');

    final data = result.data as List;
    final products = data.map((e) => ProductModel.fromJson(e)).toList();

    return (products: products, result: const Success());
  }

  @override
  Future<({ProductModel? product, Response result})> getProduct(int id) async {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }

  @override
  Future<({ProductModel? product, Response result})> createProduct(
      ProductModel product) async {
    // TODO: implement createProduct
    throw UnimplementedError();
  }

  @override
  Future<({Response result, bool success})> deleteProduct(int id) async {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<({ProductModel? product, Response result})> updateProduct(
      int id, ProductModel product) async {
    // TODO: implement updateProduct
    throw UnimplementedError();
  }
}
