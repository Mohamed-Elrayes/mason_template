import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/{{name.camelCase()}}_model.dart';

import 'http_{{name.camelCase()}}_repository.dart';


final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>(
  (ref) {
    final httpService = ref.watch(httpServiceProvider);
    return Http{{name.pascalCase()}}Repository(httpService);
  },
);

/// Home repository interface
abstract class {{name.pascalCase()}}Repository {
  // implement endpoint
  String get endpoint;

  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
