
import '../models/{{name.camelCase()}}_model.dart';
import '{{name.camelCase()}}_repository_impl.dart';


/// Http implementation of the [{{name.pascalCase()}}Repository
class Http{{name.pascalCase()}}Repository implements {{name.pascalCase()}}Repository {
  /// Creates a new instance of [Http{{name.pascalCase()}}Repository]
  Http{{name.pascalCase()}}Repository(this.httpService);

  /// Http service used to access an Http client and make calls
  final HttpService httpService;

  @override
  String get endpoint => '/{{name.camelCase()}}';

  @override
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}() async {
    final responseData = await httpService.get(endpoint);
    
    return {{name.pascalCase()}}Model.fromJson(responseData);
  }
}
