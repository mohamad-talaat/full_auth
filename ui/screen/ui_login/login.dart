import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeus_app/core/constant/app_styles.dart';
import 'package:zeus_app/core/functions/validinput.dart';
import 'package:zeus_app/core/handling%20with%20apis%20&%20dataView/handlingdataview.dart';
 import 'package:zeus_app/features/full_auth/ui/screen/ui_login/widgets/custombuttonauth.dart';
import 'package:zeus_app/features/full_auth/ui/screen/ui_login/widgets/customtextformauth.dart';
import 'package:zeus_app/features/full_auth/ui/screen/ui_login/widgets/logoauth.dart';
import 'package:zeus_app/features/full_auth/ui/screen/ui_login/widgets/textsignup.dart';

import '../../../logic/auth/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.put(LoginControllerImp());
    // LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      // backgroundColor: AppColor.primaryColor,

      body:
          // WillPopScope(
          //   onWillPop: alertExitApp,
          //   child:
          GetBuilder<LoginControllerImp>(
              assignId: true,
              builder: (controller) => HandlingDataRequest(
                  statusRequest: controller.statusRequest,
                  widget: Container(
                    height: double.infinity,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/login.png"),
                      fit: BoxFit.cover,
                    )),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    child: Form(
                      key: controller.formstate,
                      child: SingleChildScrollView(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 100,
                              ),
                              //  const LogoAuth(),
                              const Apptitle(),
                 
                              const SizedBox(height: 15),
                              CustomTextFormAuth(
                                isNumber: true,

                                valid: (val) {
                                  return validInput(val!, 8, 13, "phone");
                                },
                                mycontroller: controller.phone,
                                hinttext: "Enter Your Phone".tr,
                                iconData: Icons.phone_callback_outlined,
                                labeltext: "Phone".tr,
                                // mycontroller: ,
                              ),
                            
                              CustomTextFormAuth(
                                obscureText: controller.isshowpassword,
                                onTapIcon: () {
                                  controller.showPassword();
                                },
                                isNumber: false,
                                valid: (val) {
                                  return validInput(val!, 5, 30, "password");
                                },
                                mycontroller: controller.password,
                                hinttext: "Enter Your Password".tr,
                                iconData: Icons.lock_outline,
                                labeltext: "Password".tr,
                                // mycontroller: ,
                              ),
                          

         // OTP Input Field (Initially Hidden)
               Visibility(
                visible: loginController.isOtpRequired, 
                child: TextFormField(
                  controller: loginController.otpController,
                  decoration: const InputDecoration(labelText: 'Enter OTP'),
                ),
              ) ,

              // Submit OTP Button (Initially Hidden)
               Visibility(
                visible: loginController.isOtpRequired,
                child: ElevatedButton(
                  onPressed: () {
                    loginController.submitOtp();
                  },
                  child: const Text('Submit OTP'),
                ),
              ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      //   controller.goToForgetPassword();
                                    },
                                    child: Text(
                                      "14".tr,
                                      textAlign: TextAlign.right,
                                      style: AppTextStyle.aBeeZeefont16boldblue
                                          .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              CustomButtonAuth(
                                  text: "15".tr,
                                  onPressed: () {
                                    controller.goToLogin();
                                  }),

                              const SizedBox(height: 20),
                              CustomTextSignUpOrSignIn(
                                textone: "16".tr,
                                texttwo: "17".tr,
                                onTap: () {
                                  controller.goToRegister();
                                },
                              )
                         
                         
                            ]),
                      ),
                    ),
                  ))),
     
    );
  }
}
