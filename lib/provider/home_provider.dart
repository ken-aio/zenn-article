import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/importer.dart';

final homeRepositoryProvider = Provider<HomeRepository>(
  (ref) => HomeRepositoryImpl(GithubApiClient()),
);

final homeViewModelProvider = StateNotifierProvider<HomeViewModel, HomeUiState>(
  (ref) => HomeViewModel(
    homeRepository: ref.watch(homeRepositoryProvider),
  ),
);
