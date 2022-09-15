import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KreativeKornerFirebaseUser {
  KreativeKornerFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

KreativeKornerFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KreativeKornerFirebaseUser> kreativeKornerFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KreativeKornerFirebaseUser>(
            (user) => currentUser = KreativeKornerFirebaseUser(user));
