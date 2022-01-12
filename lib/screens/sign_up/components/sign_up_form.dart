import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/components/loading_button.dart';
import 'package:pinisi_parking_spot/screens/components/text_field_container.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  TextEditingController nim = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool isLoading = false;
  bool showPass = true;

  final List<String> errors = ["Register Failed"];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          TextFieldContainer(
            isWrapSize: false,
            child: TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: kPrimaryLightColor,
                ),
                border: InputBorder.none,
                hintText: "Masukkan nama",
                hintStyle: TextStyle(
                  color: kSubtitleTextColor,
                ),
              ),
              keyboardType: TextInputType.number,
              controller: nim,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kNimNullError)) {
                  setState(() {
                    errors.remove(kNimNullError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kNimNullError)) {
                  setState(() {
                    errors.add(kNimNullError);
                  });
                }
                return null;
              },
            ),
          ),
          Text(
            'Alamat Email',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          TextFieldContainer(
            isWrapSize: false,
            child: TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.mail,
                  color: kPrimaryLightColor,
                ),
                border: InputBorder.none,
                hintText: "Masukkan email",
                hintStyle: TextStyle(
                  color: kSubtitleTextColor,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              controller: email,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kAddressNullError)) {
                  setState(() {
                    errors.remove(kAddressNullError);
                  });
                } else if (emailValidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.remove(kInvalidEmailError);
                  });
                }
                return null;
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kAddressNullError)) {
                  setState(() {
                    errors.add(kAddressNullError);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
            ),
          ),
          Text(
            'Kata Sandi',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          TextFieldContainer(
            isWrapSize: false,
            child: TextFormField(
              obscureText: showPass,
              style: primaryTextStyle,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: kPrimaryLightColor,
                ),
                suffix: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (showPass == true) {
                        showPass = false;
                      } else {
                        showPass = true;
                      }
                    });
                  },
                  child: Icon(
                    showPass ? Icons.visibility_off : Icons.visibility,
                    color: kPrimaryColor,
                  ),
                ),
                hintText: "Masukkan kata sandi",
                hintStyle: TextStyle(
                  color: kSubtitleTextColor,
                ),
                border: InputBorder.none,
              ),
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kPassNullError)) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                } else if (value.length >= 8 &&
                    errors.contains(kShortPassError)) {
                  setState(() {
                    errors.remove(kShortPassError);
                  });
                }
                return null;
              },
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kPassNullError)) {
                  setState(() {
                    errors.add(kPassNullError);
                  });
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
                  setState(() {
                    errors.add(kShortPassError);
                  });
                }
                return null;
              },
              controller: password,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(20),
          ),
          isLoading
              ? DefaultButton(
                  text: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: getPropertionateScreenWidht(30),
                    ),
                    child: CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation(
                        kPrimaryColor,
                      ),
                    ),
                  ),
                  press: () {})
              : DefaultButton(
                  text: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: getPropertionateScreenWidht(18),
                    ),
                  ),
                  press: () async {
                    setState(() {
                      isLoading = true;
                    });
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _formKey.currentState!.save();
                      });
                    }
                    if (await AuthServices.signUp(
                        email.text, password.text, nim.text)) {
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.red,
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: List.generate(
                              errors.length,
                              (index) => Text(errors[index]),
                            ),
                          ),
                        ),
                      );
                    }
                    setState(() {
                      isLoading = false;
                    });
                  }),
        ],
      ),
    );
  }
}
