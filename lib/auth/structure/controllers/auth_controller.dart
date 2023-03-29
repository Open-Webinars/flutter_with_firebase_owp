import 'package:flutter/material.dart';
import 'package:flutter_with_firebase_owp/auth/services/auth_firebase_repository.dart';
import 'package:flutter_with_firebase_owp/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repeatPasswordController = TextEditingController();

  Rxn<User?> firebaseUser = Rxn<User?>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Stream<User?> get user => _auth.authStateChanges();
  @override
  void onReady() {
    ever(firebaseUser, handleAuthChanged);
    firebaseUser.bindStream(user);
    super.onReady();
  }

  handleAuthChanged(User? firebaseUser) async {
    if (firebaseUser?.isAnonymous == false && firebaseUser?.uid != null ||
        firebaseUser?.isAnonymous == true) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  signInAnonymous() async {
    firebaseUser.value = await AuthFirebaseRepository().signInAnonymous();
  }

  registerWithEmailAndPassword() async {
    firebaseUser.value =
        await AuthFirebaseRepository().registerWithEmailAndPassword(
      email: emailController.value.text,
      password: passwordController.value.text,
    );

    // FirestoreDatabaseUsers().createNewUser(
    //   uidUser: firebaseUser.value!.uid,
    //   nameUser: emailController.value.text,
    // );
  }

  loginWithEmailAndPassword() async {
    firebaseUser.value =
        await AuthFirebaseRepository().loginWithEmailAndPassword(
      email: emailController.value.text,
      password: passwordController.value.text,
    );
  }

  Future<void> signOut() async {
    return _auth.signOut();
  }
}
