import 'package:sample/importer.dart';

class HomeRepositoryImpl implements HomeRepository {
  final GithubApiClient apiClient;

  HomeRepositoryImpl(this.apiClient);

  @override
  Future<Result<User, AppError>> fetchData() async {
    return await apiClient.getData();
  }
}
