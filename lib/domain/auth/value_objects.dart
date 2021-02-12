import 'package:dartz/dartz.dart';
import '../core/value_Validators.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(
    this.value,
  );
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(
    this.value,
  );
}

// void showValueOrFaulure() {
//   final emailAddress = EmailAddress('input');

//   String emailText = emailAddress.value.fold(
//     (left) => 'Faulure happened! more precisely: $left',
//     (right) => right,
//   );

//   String emailText2 =
//       emailAddress.value.getOrElse(() => 'Some faulure happened');
// }
