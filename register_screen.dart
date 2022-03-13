import 'package:ecomapp/utils/components/components.dart';
import 'package:ecomapp/utils/components/constants.dart';
import 'package:ecomapp/utils/theme.dart';
import 'package:ecomapp/view/screens/auth/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController=TextEditingController();

  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();

  var formKey=GlobalKey<FormState>();
   bool value=false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back_ios_outlined,color: Colors.black,)),
        backgroundColor:
        Colors.white,
        actions: [
        IconButton(
          onPressed: (){}, icon:const Icon(Icons.home,color: Colors.black,),
          
        )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
                          defaultText(text: 'UP', fontSize: 25,color:!Get.isDarkMode? Colors.black:Colors.white),
                        ],
                      ),
                      const SizedBox(height: 12.0,),
                      defaultText(text: 'Welcome back , sign in to see our products and services', fontSize: 11.0,color: !Get.isDarkMode? Colors.grey:Colors.white),
                      SizedBox(height: MediaQuery.of(context).size.height*.08,),
                      defaultFormField(controller: nameController, inputType: TextInputType.text, validator: (String value){
                        if(value.isEmpty){
                          return 'Name is Empty';
                        }
                        return null;
                      }, label: 'Name', icon: Icons.person),
                      SizedBox(height: MediaQuery.of(context).size.height*.01,),
                      defaultFormField(
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
                      Row(
                        children: [
                          checkAccept(),
                         defaultText(text: 'i accept all ', fontSize: 14.0,color: Colors.black,fontWeight: FontWeight.w600),
                         defaultText(text: 'terms and conditions', fontSize: 14.0,decoration: TextDecoration.underline,color:!Get.isDarkMode? Colors.black:Colors.white),

                        ],
                      ),
                    ],
                  ),
              ),
            ),
           const SizedBox(height: 5.0,),
           Padding(
             padding: const EdgeInsets.only(right: 20.0,left: 20.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 defaultButton(function: (){}, text: 'Sign up'),
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
               defaultText(text: 'I have an account?', fontSize: 13.0,color:Colors.black),
               FlatButton(onPressed: (){
                 Get.to(LoginScreen());
               }, child:defaultText(text: 'Sign in', fontSize: 13.0,color: Colors.deepOrange,decoration: TextDecoration.underline))
             ],
           )
          ],
        ),
      ),
    );
  }


 Widget checkAccept() =>Checkbox(
     activeColor: Colors.black,
     checkColor: Colors.white,
     value: value, onChanged: (v){
   setState(() {
     value=v!;
   });
 });
}
