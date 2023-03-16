import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../logic/providers/{{name.camelCase()}}_provider.dart';
import 'sections/{{name.camelCase()}}_empty_section.dart';
import 'sections/{{name.camelCase()}}_data_section.dart';



class {{name.pascalCase()}}Page extends ConsumerWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerData = ref.watch({{name.camelCase()}}Provider);

    return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
    child : providerData.when(
      data: (result) => [
             ///* Empty page when no address
            const {{name.pascalCase()}}EmptySection(),

            ///* {{name.camelCase()}} Data
            {{name.pascalCase()}}DataSection({{name.camelCase()}}Data:result)
      ][result.data.isEmpty ? 0 : 1],
          error: (error, stackTrace) => ErrorView(
        error: error,
        isReloading: providerData.isLoading,
        onRetry: () async => await ref.refresh({{name.camelCase()}}Provider),
      ),
      loading: LoadingWidget.adaptive,
    )
  );}
}



  