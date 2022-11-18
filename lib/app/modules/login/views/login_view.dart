import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/Constant.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  void validateEmail() {
    final bool isValid =
        EmailValidator.validate(controller.emailTextController.text.trim());
    if (isValid) {
      controller.apiLogin(controller.emailTextController.text,
          controller.passwordTextController.text);
    } else {
      Constants.snackBarError("Error", "Invalid mail");
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    final w = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/loginBg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 80, right: 80, top: 60),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Welcome To Arrowmech",
                    style: TextStyle(
                        fontSize: 25, fontFamily: Constants.outfitBold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 0.5,
                        fontFamily: Constants.outfitBold),
                  ),
                ),
                SizedBox(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: TextFormField(
                        validator: (value) =>
                            value!.isEmpty ? 'Email Required' : null,
                        controller: controller.emailTextController,
                        // controller: controller.emailTextController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Enter email id '),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 20, left: 30),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 14, fontFamily: Constants.outfitBold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Obx(()=>
                    TextFormField(
                      obscuringCharacter: '&',
                      validator: (value) =>
                          value!.isEmpty ? 'Password Required' : null,
                      controller: controller.passwordTextController,
                      obscureText: controller.isVisible.value,
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            onTap: (){
                              controller.isVisible.value = !controller.isVisible.value;
                            },
                              child: (controller.isVisible.value)?Icon(CupertinoIcons.eye_slash , color:  Constants.primaryColor,):Icon(CupertinoIcons.eye , color:  Constants.primaryColor,)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: 'Enter password'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 30),
                      child: Obx(
                        () => Checkbox(
                          shape: const ContinuousRectangleBorder(),
                          value: controller.check.value,
                          onChanged: (value) {
                            controller.check.value = value!;
                          },
                          activeColor: Constants.primaryColor,
                        ),
                      ),
                    ),
                    Text(
                      "Remember Me",
                      style:
                          TextStyle(fontFamily: Constants.outFit, fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    width: w,
                    child: ElevatedButton(
                        onPressed: () {
                          print(controller.passwordTextController.toString());
                          print(controller.emailTextController.toString());
                          validateEmail();
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Constants.primaryColor),
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              fontFamily: Constants.outFit, fontSize: 16),
                        ))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
