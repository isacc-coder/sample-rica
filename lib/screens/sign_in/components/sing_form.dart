import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../size_config.dart';

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        buildPasswordFormField(),
        SizedBox(
          height: getProportionateScreenHeight(30),
        ),
        DefaultButton(
            text: "continue",
            press: () {
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              //   Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              // }
            })
      ]),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      // onSaved: (),
      // onChanged:(),
      decoration: InputDecoration(
        labelText: "Mobile Number",
        hintText: "Enter your Phone Number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
