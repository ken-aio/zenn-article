import 'package:sample/importer.dart';

class MaxLengthValidator implements Validator<String> {
  final int maxLength;

  MaxLengthValidator(this.maxLength);

  @override
  bool validate(value) => value.length <= maxLength;

  @override
  String getMessage() => '$maxLength${Strings.maxLengthValidatorMessage}';
}
