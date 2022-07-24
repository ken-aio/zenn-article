import 'package:flutter_test/flutter_test.dart';
import 'package:sample/importer.dart';

void main() {
  group('MaxLengthValidatorTest', () {
    test('入力値が「24」で有効となること', () {
      // Given.
      final ageValidator = AgeValidator();

      // Test.
      final actual = ageValidator.validate('24');

      // Check.
      expect(actual, true);
    });

    test('入力値が「0」で有効となること', () {
      // Given.
      final ageValidator = AgeValidator();

      // Test.
      final actual = ageValidator.validate('0');

      // Check.
      expect(actual, true);
    });

    test('入力値が「-1」で無効となること', () {
      // Given.
      final ageValidator = AgeValidator();

      // Test.
      final actual = ageValidator.validate('-1');

      // Check.
      expect(actual, false);
    });

    test('入力値が「10.0」で無効となること', () {
      // Given.
      final ageValidator = AgeValidator();

      // Test.
      final actual = ageValidator.validate('10.0');

      // Check.
      expect(actual, false);
    });

    test('入力値が「アイウエオ」で有効となること', () {
      // Given.
      final ageValidator = AgeValidator();

      // Test.
      final actual = ageValidator.validate('アイウエオ');

      // Check.
      expect(actual, false);
    });
  });
}
