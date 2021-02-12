import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../auth/email_address.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}

// void showValueOrFaulure() {
//   final emailAddress = ValueObject('input');

//   String emailText = emailAddress.value.fold(
//     (left) => 'Faulure happened! more precisely: $left',
//     (right) => right,
//   );

//   String emailText2 =
//       emailAddress.value.getOrElse(() => 'Some faulure happened');
// }
