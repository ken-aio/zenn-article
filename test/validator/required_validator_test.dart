import 'package:flutter_test/flutter_test.dart';
import 'package:sample/importer.dart';

void main() {
  group('RequiredValidatorTest', () {
    test('入力値がnullで無効となること', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.validate(null);

      // Check.
      expect(actual, false);
    });

    test('入力値が「テスト文字列」で有効となること', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.validate('テスト文字列');

      // Check.
      expect(actual, true);
    });

    test('入力値が空文字で無効となること', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.validate('');

      // Check.
      expect(actual, false);
    });

    test('入力値が半角空白で無効となること', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.validate(' ');

      // Check.
      expect(actual, false);
    });

    test('入力値が全角空白で無効となること', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.validate('　');

      // Check.
      expect(actual, false);
    });

    test('バリデーション無効のメッセージを返すこと', () {
      // Given.
      final requiredValidator = RequiredValidator();

      // Test.
      final actual = requiredValidator.getMessage();

      // Check.
      expect(actual, Strings.requiredValidatorMessage);
    });
  });
}
