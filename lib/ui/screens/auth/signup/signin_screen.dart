import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:steel_shop/core/constants/app_colors.dart';
import 'package:steel_shop/core/constants/app_fonts.dart';
class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var fullNameController=TextEditingController();
  var newBusinessController=TextEditingController();
  var newEmailController=TextEditingController();
  var newMobileNoController=TextEditingController();
  var newAddressController=TextEditingController();
  var newLocationController=TextEditingController();
  var newPasswordController=TextEditingController();
  var passwordOb = true;
  var myKey=GlobalKey<FormState>();
  var name,email,mobileNo,address,location,password,confrimPassword, business;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(
          'SignIn Screen',
          style: AppFonts.appBarTextStyle1,
        ),
        backgroundColor: AppColors.primaryAppColor,
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: myKey,
            child: Column(
              children: [
               SizedBox(height: 5.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        text: 'Name',
                        style: AppFonts.homeSimpleTextColor,
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: AppFonts.homeSimpleTextColor
                                .copyWith(color: Colors.red,
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 1.h,),
                TextFormField(
                  controller: fullNameController,
                  style: const TextStyle(
                    color: Colors.teal,
                  ),

                  cursorColor: Colors.teal,
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: AppFonts.homeSimpleText,
                    fillColor: Colors.teal,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),

                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[a-zA-Z\s]*$',).hasMatch(value)){
                      return 'please provide your name';
                    }else{
                      name=value;
                      return null;
                    }
                  },
                ),
                SizedBox(height: 2.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        text: 'Email',
                        style: AppFonts.homeSimpleTextColor,
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: AppFonts.homeSimpleTextColor
                                .copyWith(color: Colors.red,
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 1.h,),
                TextFormField(
                  controller: newEmailController,
                  style: const TextStyle(
                    color: Colors.teal,
                  ),
                  cursorColor: Colors.teal,
                  decoration: InputDecoration(
                    hintText: ' Email',
                    hintStyle: AppFonts.homeSimpleText,
                    fillColor: Colors.teal,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}').hasMatch(value!)){
                      return 'please provide your email ';
                    }else{
                      email=value;
                      return null;
                    }
                  },
                ),
                SizedBox(height: 2.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        text: 'Contact',
                        style: AppFonts.homeSimpleTextColor,
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: AppFonts.homeSimpleTextColor
                                .copyWith(color: Colors.red,
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 1.h,),
                TextFormField(
                  controller: newMobileNoController,
                  style: const TextStyle(
                    color: Colors.teal,
                  ),
                  cursorColor: Colors.teal,
                  decoration: InputDecoration(
                    hintText: 'Contact',
                    hintStyle: AppFonts.homeSimpleText,
                    fillColor: Colors.teal,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty||!RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$').hasMatch(value!)){
                      return 'please provide your mobile no';
                    }else{
                      mobileNo=value;
                      return null;
                    }
                  },
                ),
                SizedBox(height: 2.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        text: 'Address',
                        style: AppFonts.homeSimpleTextColor,
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: AppFonts.homeSimpleTextColor
                                .copyWith(color: Colors.red,
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 1.h,),
                TextFormField(
                  controller: newAddressController,
                  style: const TextStyle(
                    color: Colors.teal,
                  ),
                  cursorColor: Colors.teal,
                  decoration:InputDecoration(
                    hintText: 'Address',
                    hintStyle: AppFonts.homeSimpleText,
                    fillColor: Colors.teal,

                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'please provide address';
                    }else{
                      address=value;
                      return null;
                    }
                  },
                ),
                SizedBox(height: 2.h,),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                        text: 'Password',
                        style: AppFonts.homeSimpleTextColor,
                        children: <TextSpan>[
                          TextSpan(
                            text: '*',
                            style: AppFonts.homeSimpleTextColor
                                .copyWith(color: Colors.red,
                            ),
                          )
                        ]),
                  ),
                ),
                SizedBox(height: 1.h,),
                TextFormField(
                  controller: newPasswordController,
                  style: const TextStyle(
                    color: Colors.teal,
                  ),
                  obscureText: passwordOb,
                  cursorColor: Colors.teal,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: AppFonts.homeSimpleText,
                    fillColor: Colors.teal,
                    contentPadding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Colors.teal, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          passwordOb = !passwordOb;
                        });
                      },
                      icon: Icon(passwordOb ?
                      Icons.visibility_off: Icons.visibility),
                      color: Colors.teal,
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'please provide password';
                    }else{
                      password=value;
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 5.h,
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 6.5.h,
                    decoration: BoxDecoration(
                      color: AppColors.primaryAppColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Submit',

                        style: AppFonts.signInText.copyWith(
                          color: const Color(0xFFFFFFFF),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
        ),
      ),

    );
  }

  }

