import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure implements _$Failure {
  const Failure._();

  const factory Failure({
    required String failureId,
    required String failureValue,
    required String failureForUser,
    required bool value,
  }) = _Failure;

  factory Failure.setNoFailure() => const Failure(failureId: '', failureValue: '', failureForUser: '', value: false);
}
