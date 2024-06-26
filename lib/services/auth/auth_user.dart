import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String email;
  final bool isEmailVerified;
  final String id; 
  const AuthUser({required this.email, required this.isEmailVerified, required this.id});   // constructor 

  factory AuthUser.fromFirebase(User user) => AuthUser(email: user.email!, isEmailVerified: user.emailVerified, id: user.uid);

  // returns a bool 
}