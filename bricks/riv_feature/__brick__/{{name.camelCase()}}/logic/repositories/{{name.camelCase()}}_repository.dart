import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/{{name.camelCase()}}_model.dart';

import 'http_{{name.camelCase()}}_repository.dart';

/// Provider to map [Http{{name.pascalCase()}}Repository] implementation to
/// [{{name.pascalCase()}}Repository] interface
final {{name.camelCase()}}RepositoryProvider = Provider<{{name.pascalCase()}}Repository>(
  (ref) {
    final httpService = ref.watch(httpServiceProvider);
    return Http{{name.pascalCase()}}Repository(httpService);
  },
);

/// {{name.pascalCase()}} repository interface
abstract class {{name.pascalCase()}}Repository {
  // implement endpoint
  String get endpoint;
  /// Request to get a {{name.pascalCase()}}  endpoint
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
