import 'package:sample/importer.dart';

class AgeValidator implements Validator<String> {
  @override
  bool validate(String value) {
    return int.tryParse(value) != null;
  }

  @override
  String getMessage() => Strings.ageValidatorMessage;
}
