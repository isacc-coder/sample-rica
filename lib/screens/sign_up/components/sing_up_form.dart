import 'package:flutter/material.dart';
import 'package:rel/screens/sign_up/components/radio.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          buildFirstFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildLastFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPhoneFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          RadioForm(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildConfPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                // if (_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                //   //Fo to complete profile
                //   Navigator.pushNamed(context, CompleteProfileScreen.routeName);
                // }
              })
        ],
      ),
    );
  }

  TextFormField buildFirstFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "First Name",
        hintText: "Enter your First Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildLastFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your LastName",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Phone",
        hintText: "Enter your Mobile Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
