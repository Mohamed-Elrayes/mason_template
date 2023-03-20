import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/{{name.camelCase()}}_model.dart';
import '../repositories/{{name.camelCase()}}_repository.dart';

{{#useFutureProvider}}
  {{#useDispose}}
    final {{name.camelCase()}}Provider = AutoDisposeFutureProvider<{{name.pascalCase()}}Model>((ref) async {
       return ref.watch({{name.camelCase()}}RepositoryProvider).get{{name.pascalCase()}}();
    });
  {{/useDispose}}
  {{^useDispose}}
    final {{name.camelCase()}}Provider = FutureProvider<{{name.pascalCase()}}Model>(
      (ref) async {
        return ref.watch({{name.camelCase()}}RepositoryProvider).get{{name.pascalCase()}}();
      },
    );
  {{/useDispose}}
{{/useFutureProvider}}
{{^useFutureProvider}}
    {{#useDispose}}
       final {{name.camelCase()}}Provider =
        AutoDisposeAsyncNotifierProvider<{{name.pascalCase()}}Notifier, {{name.pascalCase()}}Model>(
            {{name.camelCase()}}Notifier.new);
        class {{name.pascalCase()}}Notifier extends AutoDisposeAsyncNotifier<{{name.pascalCase()}}Model> {
          @override
          build() {
            return ref.watch({{name.camelCase()}}RepositoryProvider).get{{name.pascalCase()}}();
          }
        }
    {{/useDispose}}
    {{^useDispose}}
         final {{name.camelCase()}}Provider =
        AsyncNotifierProvider<{{name.pascalCase()}}Notifier, {{name.pascalCase()}}Model>(
            {{name.camelCase()}}Notifier.new);

        class {{name.pascalCase()}}Notifier extends AsyncNotifier<{{name.pascalCase()}}Model> {
          @override
          build() {
            return ref.watch({{name.camelCase()}}RepositoryProvider).get{{name.pascalCase()}}();
          }
        }
    {{/useDispose}}
{{/useFutureProvider}}



