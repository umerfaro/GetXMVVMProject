import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxmvvm/Resources/Components/InputTextFormField.dart';
import 'package:getxmvvm/Resources/Components/Round_button.dart';
import 'package:getxmvvm/Utils/utils.dart';
import 'package:getxmvvm/ViewModels/Contoller/LoginContoller/login_contoller.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _loginController = Get.put(LoginController());

  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height * 1;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("login".tr),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _loginController.logInFormKey.value,
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * .06, bottom: height * .01),
                child: Column(
                  children: [
                    InputTextFormField(
                      myController: _loginController.emailController.value,
                      myFocusNode: _loginController.emailFocusNode.value,
                      onFiledSubmittedValue: (value) {
                        Utils.fieldFocusChange(
                            context,
                            _loginController.emailFocusNode.value,
                            _loginController.passwordFocusNode.value);
                      },
                      onValidateValue: (value) {
                        return value.isEmpty ? 'email_empty'.tr : null;
                      },
                      textInputType: TextInputType.emailAddress,
                      hintText: 'email_hint'.tr,
                      obscureText: false,
                      iconName: 'email',
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    InputTextFormField(
                      myController: _loginController.passwordController.value,
                      myFocusNode: _loginController.passwordFocusNode.value,
                      onFiledSubmittedValue: (value) {},
                      onValidateValue: (value) {
                        return value.isEmpty ? 'password_empty'.tr : null;
                      },
                      textInputType: TextInputType.emailAddress,
                      hintText: 'password_hint'.tr,
                      obscureText: true,
                      iconName: 'password',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Obx(() => RoundButton(
              loading: _loginController.loginButtonEnable.value,
              buttonColor: Theme.of(context).colorScheme.primary,
              text: 'Login',
              height: height * 0.06,
              width: height * 0.3,
              onPressed: () {
                if (_loginController.logInFormKey.value.currentState!
                    .validate()) {

                  _loginController.loginApi();

                }
              },
            ))
          ],
        ));
  }
}
