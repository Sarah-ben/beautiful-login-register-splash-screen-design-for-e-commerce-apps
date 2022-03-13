import 'package:ecomapp/routes/routes.dart';
import 'package:ecomapp/utils/components/components.dart';
import 'package:ecomapp/utils/components/constants.dart';
import 'package:ecomapp/view/screens/auth/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'auth/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: double.infinity,
              child:Image.network("https://file1.closermag.fr/var/closermag/storage/images/media/images-des-contenus/mode/shopping-mode/2014-11-04-shopping-mode-totalement-zebree/cara-delevingne-dans-les-rues-de-new-york-le-20-avril-2013/3833484-1-fre-FR/Cara-Delevingne-dans-les-rues-de-New-York-le-20-avril-2013.jpg?alias=exact1024x768_p&size=x100&format=jpeg",
              fit:BoxFit.cover,),
            ),
           //const SizedBox(height: double.infinity-50,),
            Container(
              color: Colors.black.withOpacity(.3),
              width: double.infinity,
              height: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Container(
                   margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/2),
                   height: 60.0,
                   width: 190.0,
                   decoration: BoxDecoration(
                     color: Colors.black.withOpacity(.5),
                     borderRadius:const BorderRadius.all(Radius.circular(10.0))
                   ),
                   child: Center(child:defaultText(text: 'welcome', fontSize: 30.0)),
                 ),
                 const SizedBox(
                   height: 10.0,
                 ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(onPressed: (){
                      Get.off(LoginScreen());
                    }, child: defaultText(text: 'Signin', fontSize: 20.0,color: Colors.amber,decoration: TextDecoration.underline)),
                    const Text('OR',style: TextStyle(color: Colors.white),),
                    FlatButton(onPressed: (){
                      Get.off(RegisterScreen());
                    }, child: defaultText(text: 'Signup', fontSize: 20.0,color: Colors.amber,decoration: TextDecoration.underline))
                  ],
                )
               ],
             ),
            )
          ],
        ),
      ),
    );
  }
}
