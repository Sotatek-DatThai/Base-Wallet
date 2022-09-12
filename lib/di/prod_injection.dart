import 'package:injectable/injectable.dart';

@Injectable(env: ['prod'])
class ProdInjection {
  @Named('baseUrl')
  String get baseUrl => '';
}
