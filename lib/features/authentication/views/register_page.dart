import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thrash_threads/features/authentication/auth_bloc/auth_bloc.dart';
import 'package:thrash_threads/features/authentication/model/user_model.dart';

import '../../../widgets/custom_container_widget.dart';
import '../widgets/custom_text_form_feild_widget.dart';
import '../../../widgets/custom_text_widget.dart';

class RegisterPageWrapper extends StatelessWidget {
  const RegisterPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: RegisterPage(),
    );
  }
}

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final authbloc=BlocProvider.of<AuthBloc>(context);
    return BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
      if (state is Authenticated) {

        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false,);
        },);
      }
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 120, left: 102, right: 103, bottom: 50),
                child: Image.asset("assets/images/Vector Smart Object 1.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: CustomTextWidget(
                  text: "Name",
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 55,
                  child: CustomTextFormFeildWidget(
                    controller: _nameController,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: CustomTextWidget(
                  text: "Phone",
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 55,
                  child: CustomTextFormFeildWidget(
                    controller: _phoneController,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: CustomTextWidget(
                  text: "Email",
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 55,
                  child: CustomTextFormFeildWidget(
                    controller: _emailController,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                ),
                child: CustomTextWidget(
                  text: "Password",
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 60,
                  child: CustomTextFormFeildWidget(
                    obscureText: true,
                    controller: _passwordController,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: InkWell(
                  onTap: () {

                    UserModel user = UserModel(
                        name:_nameController.text,
                        phone:_phoneController.text,
                        email:_emailController.text,
                        password:_passwordController.text,
                       );
                    print(user.email);
                    authbloc.add(SignUpEvent(user: user));
                  },
                  child: const CustomContainerWidget(
                    borderRadius: 6,
                    height: 50,
                    width: 150,
                    color: Colors.black,
                    child: Center(
                      child: CustomTextWidget(
                        text: "Register",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextWidget(
                      text: "Already have an account? ",
                      color: Color(0xFF3E8015),
                      fontSize: 15,
                    ),
                    CustomTextWidget(
                      text: "LOGIN",
                      color: Color(0xFF3E8015),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Color(0xFF3E8015),
                height: .5,
                endIndent: 90,
                indent: 90,
              ),
            ],
          ),
        ),
      );
    });
  }
}
