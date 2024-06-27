import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thrash_threads/features/authentication/auth_bloc/auth_bloc.dart';
import 'package:thrash_threads/utils/sizeconfig.dart';
import 'package:thrash_threads/widgets/custom_container_widget.dart';
import 'package:thrash_threads/widgets/custom_icon_widget.dart';
import 'package:thrash_threads/features/authentication/widgets/custom_text_form_feild_widget.dart';
import 'package:thrash_threads/widgets/custom_text_widget.dart';
class LoginPageWrapper extends StatelessWidget {
  const LoginPageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => AuthBloc(),child: LoginPage(),);
  }
}




class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final authBloc=BlocProvider.of<AuthBloc>(context);
     return BlocBuilder<AuthBloc,AuthState>(builder: (context, state) {

       if(state is AuthLoading){
         return Center(child: CircularProgressIndicator());
       }
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
                   text: "Email",
                   color: Colors.black,
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Container(
                   height: 55,
                   child: CustomTextFormFeildWidget(
                     controller: _emailController,
                   ),
                 ),
               ),
               const SizedBox(
                 height: 5,
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
                 padding: const EdgeInsets.symmetric(horizontal: 16),
                 child: Container(
                   height: 55,
                   child: CustomTextFormFeildWidget(
                     obscureText: true,
                     controller: _passwordController,
                   ),
                 ),
               ),
               const Padding(
                 padding: EdgeInsets.only(left: 15),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     CustomTextWidget(
                       text: "Forgot your password?",
                       color: Color(0xFF3E8015),
                       fontSize: 15,
                     ),
                     Divider(
                       color: Color(0xFF3E8015),
                       endIndent: 210,
                       height: 3,
                     ),
                   ],
                 ),
               ),
               const SizedBox(
                 height: 27,
               ),
               Center(
                 child: InkWell(
                   onTap: () {
                     authBloc.add(LoginEvent(email: _emailController.text.trim(), password:_passwordController.text.trim()));


                   },
                   child: CustomContainerWidget(
                     borderRadius: 6,
                     height: 50,
                     width: 100,
                     color: Colors.black,
                     child: Center(
                       child: CustomTextWidget(
                         text: "LOG IN",
                         color: Colors.white,
                       ),
                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 27,
               ),
               const Padding(
                 padding: EdgeInsets.only(left: 15),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     CustomTextWidget(
                       text: "Use other login method",
                       color: Color(0xFF3E8015),
                       fontSize: 15,
                     ),
                     Divider(
                       color: Color(0xFF3E8015),
                       endIndent: 205,
                       height: 2,
                     ),
                   ],
                 ),
               ),
               const SizedBox(
                 height: 6,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 15, right: 15),
                 child: CustomContainerWidget(
                     border: Border.all(),
                     borderRadius: 6,
                     height: 55,
                     width: SizeConfig.screenWidth,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset("assets/images/fa6-brands_google.png"),
                         const SizedBox(
                           width: 10,
                         ),
                         const CustomTextWidget(
                           text: "Login with Google",
                           fontSize: 17,
                           fontWeight: FontWeight.w500,
                         )
                       ],
                     )),
               ),
               const SizedBox(
                 height: 10,
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 15, right: 15),
                 child: CustomContainerWidget(
                   border: Border.all(),
                   borderRadius: 6,
                   height: 55,
                   width: SizeConfig.screenWidth,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 15),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Image.asset("assets/images/ri_facebook-fill.png"),
                         const SizedBox(
                           width: 10,
                         ),
                         const CustomTextWidget(
                           text: "Login with Facebook",
                           fontSize: 17,
                           fontWeight: FontWeight.w500,
                         )
                       ],
                     ),
                   ),
                 ),
               ),
               const SizedBox(
                 height: 37,
               ),
               InkWell(
                 onTap: () {
                   Navigator.pushNamed(context, "/register");
                 },
                 child: const Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CustomTextWidget(
                       text: "Haven't an account? ",
                       color: Color(0xFF3E8015),
                       fontSize: 15,
                     ),
                     CustomTextWidget(
                       text: "Register Now",
                       color: Color(0xFF3E8015),
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                     ),
                   ],
                 ),
               ),
               const Divider(
                 color: Color(0xFF3E8015),
                 height: 1,
                 endIndent: 85,
                 indent: 85,
               ),
             ],
           ),
         ),
       );
     },);

  }
}
