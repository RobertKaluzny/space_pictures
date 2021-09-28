import 'package:flutter_test/flutter_test.dart';
import 'package:space_pictures/domain/failure/failure.dart';

import '../../fixtures.dart';

void main() {
  group('Failure', () {
    test('support value comparisons', () {
      expect(mockFailure, mockFailure);
    });

    test('copyWith comparisons', () {
      Failure mockFailureModified =  const Failure(failureId: 'failureId', failureValue: 'failureValueModified', failure: false);

      expect(mockFailure.copyWith(), mockFailure);
      expect(mockFailure.copyWith(failureValue: 'failureValueModified'), mockFailureModified);
    });
  });
}