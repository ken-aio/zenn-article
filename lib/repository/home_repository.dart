import 'package:sample/importer.dart';

abstract class HomeRepository {
  Future<Result<User, AppError>> fetchData();
}
