import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BananaTradersFirebaseUser {
  BananaTradersFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

BananaTradersFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BananaTradersFirebaseUser> bananaTradersFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<BananaTradersFirebaseUser>(
      (user) {
        currentUser = BananaTradersFirebaseUser(user);
        return currentUser!;
      },
    );
