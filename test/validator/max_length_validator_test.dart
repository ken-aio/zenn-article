import 'package:flutter_test/flutter_test.dart';
import 'package:sample/importer.dart';

void main() {
  group('MaxLengthValidatorTest', () {
    test('入力値が9文字で有効となること', () {
      // Given.
      final maxLengthValidator = MaxLengthValidator(10);

      // Test.
      final actual = maxLengthValidator.validate('123456789');

      // Check.
      expect(actual, true);
    });

    test('入力値が10文字で有効となること', () {
      // Given.
      final maxLengthValidator = MaxLengthValidator(10);

      // Test.
      final actual = maxLengthValidator.validate('1234567890');

      // Check.
      expect(actual, true);
    });

    test('入力値が11文字で無効となること', () {
      // Given.
      final maxLengthValidator = MaxLengthValidator(10);

      // Test.
      final actual = maxLengthValidator.validate('12345678901');

      // Check.
      expect(actual, false);
    });

    test('バリデーション無効のメッセージを返すこと', () {
      // Given.
      final maxLengthValidator = MaxLengthValidator(10);

      // Test.
      final actual = maxLengthValidator.getMessage();

      // Check.
      expect(actual, '10${Strings.maxLengthValidatorMessage}');
    });
  });
}
