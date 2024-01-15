import 'package:doctor_appointment_app/components/button.dart';
// import 'package:doctor_appointment_app/main.dart';
// import 'package:doctor_appointment_app/models/auth_model.dart';
// import 'package:doctor_appointment_app/providers/dio_provider.dart';
import 'package:doctor_appointment_app/utils/config.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurePass = true;
  // final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            cursorColor: Config.primaryColor,
            decoration: const InputDecoration(
              hintText: 'Email Address',
              labelText: 'Email',
              alignLabelWithHint: true,
              prefixIcon: Icon(Icons.email_outlined),
              prefixIconColor: Config.primaryColor,
            ),
          ),
          Config.spaceSmall,
          TextFormField(
            controller: _passController,
            keyboardType: TextInputType.visiblePassword,
            cursorColor: Config.primaryColor,
            obscureText: obsecurePass,
            decoration: InputDecoration(
                hintText: 'Password',
                labelText: 'Password',
                alignLabelWithHint: true,
                prefixIcon: const Icon(Icons.lock_outline),
                prefixIconColor: Config.primaryColor,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        obsecurePass = !obsecurePass;
                      });
                    },
                    icon: obsecurePass
                        ? const Icon(
                            Icons.visibility_off_outlined,
                            color: Config.primaryColor,
                          )
                        : const Icon(
                            Icons.visibility_outlined,
                            color: Color.fromARGB(255, 11, 71, 150),
                          ))),
          ),
          Config.spaceSmall,
          // Consumer<AuthModel>(
          //   builder: (context, auth, child) {
          // child:
          // return
          Button(
            width: double.infinity,
            title: 'Sign In',
            onPressed: ()
                // async
                {
              // login function
              // final token = await DioProvider()
              //     .getToken(_emailController.text, _passController.text);

              // if (token) {
              // auth.loginSuccess();
              // Navigator.of(context).pushNamed('main');
              // MyApp.navigatorKey.currentState!.pushNamed('main');
              // }
              // final user = await DioProvider().getUser(token);
              // print(user);
              Navigator.of(context).pushNamed('main');
            },
            disable: false,
          ),
          //   },
          // )
        ],
      ),
    );
  }
}
