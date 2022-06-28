import 'Package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/components/text_field_container.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
    required this.isAdmin,
  }) : super(key: key);

  final bool isAdmin;
  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool isLoading = false;
  bool showPass = true;
  bool stopSignIn = false;

  final List<String> errors = ["Login Gagal"];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Alamat Email',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: getPropertionateScreenWidht(16),
            ),
          ),
          TextFieldContainer(
            isWrapSize: false,
            child: TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: kPrimaryLightColor,
                ),
                border: InputBorder.none,
                hintText: "Masukkan email",
                hintStyle: TextStyle(
                  color: kSubtitleTextColor,
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kAddressNullError)) {
                  setState(() {
                    errors.remove(kAddressNullError);
                  });
                } else if (widget.isAdmin == true &&
                    value == 'admin@gmail.com' &&
                    errors.contains(kIsNotAdmin)) {
                  setState(() {
                    stopSignIn = false;
                    errors.remove(kIsNotAdmin);
                  });
                } else if (widget.isAdmin == false &&
                    value != 'admin@gmail.com' &&
                    errors.contains(kIsNotUser)) {
                  setState(() {
                    stopSignIn = false;
                    errors.remove(kIsNotUser);
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
                } else if (widget.isAdmin == true &&
                    value.trim() != 'admin@gmail.com' &&
                    !errors.contains(kIsNotAdmin)) {
                  setState(() {
                    stopSignIn = true;
                    errors.add(kIsNotAdmin);
                  });
                } else if (widget.isAdmin == false &&
                    value.trim() == 'admin@gmail.com' &&
                    !errors.contains(kIsNotUser)) {
                  setState(() {
                    stopSignIn = true;
                    errors.add(kIsNotUser);
                  });
                } else if (!emailValidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalidEmailError)) {
                  setState(() {
                    errors.add(kInvalidEmailError);
                  });
                }
                return null;
              },
              controller: email,
            ),
          ),
          SizedBox(
            height: getPropertionateScreenHeight(16),
          ),
          Text(
            'Kata Sandi',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: getPropertionateScreenWidht(16),
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
            height: getPropertionateScreenHeight(30),
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
                    'Masuk',
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
                    if (stopSignIn == false &&
                        await AuthServices.signIn(email.text.trim(), password.text)) {
                      Navigator.of(context).pop();
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
