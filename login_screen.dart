import 'package:ecomapp/view/screens/auth/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/components/components.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:const EdgeInsets.only(left: 25.0,right: 25.0),
            width: double.infinity,
            height: MediaQuery.of(context).size.height/1.6,
            child:  Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      defaultText(text: 'SIGN', fontSize: 25,color: Colors.deepOrange),
                      const SizedBox(width: 5.0,),
                      defaultText(text: 'IN', fontSize: 25,color: Colors.black),
                    ],
                  ),
                  const SizedBox(height: 12.0,),
                  defaultText(text: 'Welcome back , sign in to see our products and services', fontSize: 11.0,color: !Get.isDarkMode? Colors.grey:Colors.white),
                  SizedBox(height: MediaQuery.of(context).size.height*.08,),                  defaultFormField(
                      controller: emailController, inputType: TextInputType.emailAddress, validator: (String value){
                    if(value.isEmpty){
                      return 'Email is Empty';
                    }
                    return null;
                  }, label: 'Email', icon: Icons.email),
                  SizedBox(height: MediaQuery.of(context).size.height*.01,),

                  defaultFormField(
                      obsText: true,
                      suffix: Icons.visibility_rounded,
                      controller: passwordController, inputType: TextInputType.text, validator: (String value){
                    if(value.isEmpty){
                      return 'Password is Empty';
                    }
                    return null;
                  }, label: 'Password', icon: Icons.lock),
                  const SizedBox(height: 20.0,),

                ],
              ),
            ),
          ),
          const SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                defaultButton(function: (){}, text: 'Sign in'),
                const  Text('OR'),
                Row(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        width: 50.0,
                        height: 50.0,
                        child:Image.asset('assets/images/facebook.png',width: 50,height: 50,)
                    ),
                    SizedBox(width: 1.0,),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.deepOrange.withOpacity(.2),
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        width: 50.0,
                        height: 50.0,
                        child:Image.asset('assets/images/google.png',width: 50,height: 50,)
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              defaultText(text: 'I don\'t have an account?', fontSize: 13.0,color:Colors.black),
              FlatButton(onPressed: (){
                Get.to(RegisterScreen());
              }, child:defaultText(text: 'Sign up', fontSize: 13.0,color: Colors.deepOrange,decoration: TextDecoration.underline))
            ],
          )
        ],
      ),
    );
  }
}
