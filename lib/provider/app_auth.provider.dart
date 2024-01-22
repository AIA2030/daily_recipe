
import 'package:daily_recipe/pages/login_pages/sign_in.dart';
import 'package:daily_recipe/pages/login_pages/sign_up.dart';
import 'package:daily_recipe/pages/main_pages/home_page.dart';
import 'package:daily_recipe/pages/main_pages/login_page.dart';
import 'package:daily_recipe/utils/toast_message_status.dart';
import 'package:daily_recipe/widgets/toast_message.widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overlay_kit/overlay_kit.dart';

class AppAuthProvider extends ChangeNotifier {
  GlobalKey<FormState>? formKey;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? nameController;
  bool obsecureText = true;

  void providrInit() {
    formKey = GlobalKey<FormState>();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  void providrDispose() {
    emailController = null;
    passwordController = null;
    formKey = null;
    nameController = null;
    obsecureText = false;
  }

  void toggleObsecure() {
    obsecureText = !obsecureText;
    notifyListeners();
  }

  void openRegisterPage(BuildContext context) {
    providrDispose();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const SignUp()));
  }

  void openLoginPage(BuildContext context) {
    providrDispose();
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const SignIn()));
  }

  Future<void> logIn(BuildContext context) async {
    try {
      if (formKey?.currentState?.validate() ?? false) {
        OverlayLoadingProgress.start();
        var credentials = await FirebaseAuth.instance
            .signInWithEmailAndPassword(
            email: emailController!.text,
            password: passwordController!.text);

        if (credentials.user != null) {
          OverlayLoadingProgress.stop();
          providrDispose();
          OverlayToastMessage.show(
            widget: const ToastMessageWidget(
              message: 'You Login Successully',
              toastMessageStatus: ToastMessageStatus.success,
            ),
          );

          if (context.mounted) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          }
        }
        OverlayLoadingProgress.stop();
      }
    } on FirebaseAuthException catch (e) {
      OverlayLoadingProgress.stop();

      if (e.code == 'user-not-found') {
        OverlayToastMessage.show(
          widget: const ToastMessageWidget(
            message: 'user not found',
            toastMessageStatus: ToastMessageStatus.failed,
          ),
        );
      } else if (e.code == 'wrong-password') {
        OverlayToastMessage.show(
            widget: const ToastMessageWidget(
              message: 'Wrong password provided for that user.',
              toastMessageStatus: ToastMessageStatus.failed,
            ));
      } else if (e.code == "user-disabled") {
        OverlayToastMessage.show(
            widget: const ToastMessageWidget(
              message: 'This email Account was disabled',
              toastMessageStatus: ToastMessageStatus.failed,
            ));
      } else if (e.code == "invalid-credential") {
        OverlayToastMessage.show(
            widget: const ToastMessageWidget(
              message: 'invalid-credential',
              toastMessageStatus: ToastMessageStatus.failed,
            ));
      }
    } catch (e) {
      OverlayLoadingProgress.stop();
      OverlayToastMessage.show(textMessage: 'General Error $e');
    }
  }

  Future<void> signUp(BuildContext context) async {
    try {
      if (formKey?.currentState?.validate() ?? false) {
        OverlayLoadingProgress.start();
        var credentials = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
            email: emailController!.text,
            password: passwordController!.text);

        if (credentials.user != null) {
          await credentials.user?.updateDisplayName(nameController!.text);
          OverlayLoadingProgress.stop();
          providrDispose();

          if (context.mounted) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (_) => HomePage()));
          }
        }
        OverlayLoadingProgress.stop();
      }
    } catch (e) {
      OverlayLoadingProgress.stop();
    }
  }

  void signOut(BuildContext context) async {
    OverlayLoadingProgress.start();
    await Future.delayed(const Duration(seconds: 1));
    await FirebaseAuth.instance.signOut();
    if (context.mounted) {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (_) => LogIn()), (route) => false);
    }
    OverlayLoadingProgress.stop();
  }
}

// class AppAuthProvider extends ChangeNotifier{
//   GlobalKey<FormState>? formKey;
//   TextEditingController? emailController;
//   TextEditingController? passwordController;
//   TextEditingController? nameController;
//   bool obsecureText = true;
//
//   void providrInit(){
//     formKey = GlobalKey<FormState>();
//     emailController = TextEditingController();
//     passwordController = TextEditingController();
//     nameController = TextEditingController();
//   }
//
//   void providrDispose(){
//     emailController = null;
//     passwordController = null;
//     nameController = null;
//     formKey = null;
//     obsecureText = true;
//   }
//
//   void toggleObsecure(){
//     obsecureText = !obsecureText;
//     notifyListeners();
//   }
//
//   void openRegisterPage(BuildContext context){
//     providrDispose();
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SignUp()));
//   }
//
//   void openLoginPage(BuildContext context){
//     providrDispose();
//     Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SignIn()));
//   }
//
//   Future<void> login(BuildContext context) async {
//     try{
//       if (formKey?.currentState?.validate() ?? false){
//         OverlayLoadingProgress.start();
//         var credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(
//             email: emailController!.text, password: passwordController!.text);
//
//         if (credentials.user !=null){
//           OverlayLoadingProgress.stop();
//           providrDispose();
//           OverlayToastMessage.show(
//             widget: const ToastMessageWidget(
//               message: 'You Login Successfully',
//               toastMessageStatus: ToastMessageStatus.success,
//             ),
//           );
//           if (context.mounted) {
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
//           }
//         }
//         OverlayLoadingProgress.stop();
//       }
//     } on FirebaseAuthException catch (e){
//       OverlayLoadingProgress.stop();
//
//       if (e.code == 'user-not-found'){
//         OverlayToastMessage.show(
//           widget: const ToastMessageWidget(message: 'user not found',
//             toastMessageStatus: ToastMessageStatus.failed,
//           ),);
//       } else if (e.code == 'wrong-password'){
//         OverlayToastMessage.show(
//           widget: const ToastMessageWidget(message: 'wrong password provider for that user.',
//             toastMessageStatus: ToastMessageStatus.failed,
//           ),);
//       }
//     } catch(e) {
//       OverlayLoadingProgress.stop();
//       OverlayToastMessage.show(textMessage: 'General Error $e',);
//     }
//   }
//
//   Future<void> signUp(BuildContext context) async {
//     try{
//       if (formKey?.currentState?.validate() ?? false){
//         OverlayLoadingProgress.start();
//         var credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(
//             email: emailController!.text, password: passwordController!.text);
//
//         if (credentials.user !=null){
//           await credentials.user?.updateDisplayName(nameController!.text);
//           OverlayLoadingProgress.stop();
//           providrDispose();
//
//           if (context.mounted) {
//             Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomePage()));
//           }
//         }
//         OverlayLoadingProgress.stop();
//       }
//     } catch (e) {
//       OverlayLoadingProgress.stop();
//     }
//   }
//   void signOut(BuildContext context) async {
//     OverlayLoadingProgress.start();
//     await Future.delayed(const Duration(seconds: 1));
//     await FirebaseAuth.instance.signOut();
//     if (context.mounted) {
//       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => LogIn()), (route) => false);
//     }
//     OverlayLoadingProgress.stop();
//   }
// }