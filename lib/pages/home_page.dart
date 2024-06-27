import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thrash_threads/features/authentication/auth_bloc/auth_bloc.dart';
import 'package:thrash_threads/utils/sizeconfig.dart';
import 'package:thrash_threads/widgets/custom_container_widget.dart';
import 'package:thrash_threads/widgets/custom_icon_widget.dart';
import 'package:thrash_threads/widgets/custom_text_widget.dart';

class HomePageWrapper extends StatelessWidget {
  const HomePageWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: CustomContainerWidget(
          height: 140,
          width: 140,
          child: Image.asset("assets/images/Vector Smart Object 1.png"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false,);
              },
              icon: const Icon(
                Icons.logout,
                color: Colors.black,
                size: 25,
              )),
          SizedBox(
            width: 20,
          ),
          CustomIconWidget(
              icon: Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 25),
          SizedBox(
            width: 20,
          ),
          CustomIconWidget(
            icon: Icons.search,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomContainerWidget(
                      width: 75,
                      child: Image.asset("assets/images/Vector.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomContainerWidget(
                      width: 75,
                      child: Image.asset("assets/images/Group 5.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomContainerWidget(
                      width: 75,
                      child: Image.asset("assets/images/Group 6.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: CustomContainerWidget(
                      width: 75,
                      child: Image.asset("assets/images/Group 10.png",
                          fit: BoxFit.contain),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CustomContainerWidget(
                      width: 75,
                      child: Image.asset("assets/images/Group 8.png",
                          fit: BoxFit.contain),
                    ),
                  )
                ],
              ),
            ),
            CustomContainerWidget(
              height: 400,
              width: SizeConfig.screenWidth,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 22, top: 20, bottom: 20),
                child: CustomContainerWidget(
                    height: 380,
                    width: 400,
                    child: Image.asset(
                      "assets/images/Frame 11.png",
                      fit: BoxFit.fill,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const CustomTextWidget(
              text: "TRENDING",
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            const Divider(
              color: Colors.black,
              height: 1,
              endIndent: 150,
              indent: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: CustomContainerWidget(
                    height: 240,
                    width: 155,
                    child: Column(
                      children: [
                        CustomContainerWidget(
                          height: 160,
                          width: 155,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: 5,
                          child: Column(
                            children: [
                              const Align(
                                alignment: Alignment.topRight,
                                child: CustomIconWidget(
                                  icon: Icons.favorite_border_outlined,
                                  color: Colors.black,
                                ),
                              ),
                              Image.asset(
                                "assets/images/figma 1.png",
                                height: 120,
                                width: 120,
                              )
                            ],
                          ),
                        ),
                        const CustomContainerWidget(
                          height: 80,
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              CustomTextWidget(
                                text: "SCOTT HOODIE",
                                fontSize: 12,
                                fontFamily: "Lora",
                              ),
                              CustomTextWidget(
                                text: "Rs.2300.00",
                                fontSize: 12,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomContainerWidget(
                                borderRadius: 8,
                                height: 25,
                                width: 155,
                                color: Colors.black,
                                child: Center(
                                    child: CustomTextWidget(
                                        text: "ADD TO CART",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: CustomContainerWidget(
                    height: 240,
                    width: 155,
                    child: Column(
                      children: [
                        Stack(children: [
                          CustomContainerWidget(
                              height: 160,
                              width: 155,
                              // border: Border.all(color: Colors.grey),
                              // borderRadius: 5,
                              child: Image.asset(
                                "assets/images/Rectangle 30.png",
                                fit: BoxFit.fill,
                                height: 160,
                                width: 155,
                              )),
                          Positioned(
                            left: 130,
                            child: CustomIconWidget(
                              icon: Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                        const CustomContainerWidget(
                          height: 80,
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              CustomTextWidget(
                                text: "PINK PANTHER HOODIE",
                                fontSize: 12,
                                fontFamily: "Lora",
                              ),
                              CustomTextWidget(
                                text: "Rs.2300.00",
                                fontSize: 12,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomContainerWidget(
                                borderRadius: 8,
                                height: 25,
                                width: 155,
                                color: Colors.black,
                                child: Center(
                                    child: CustomTextWidget(
                                        text: "ADD TO CART",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: CustomContainerWidget(
                    height: 240,
                    width: 155,
                    child: Column(
                      children: [
                        Stack(children: [
                          CustomContainerWidget(
                              height: 160,
                              width: 155,
                              // border: Border.all(color: Colors.grey),
                              // borderRadius: 5,
                              child: Image.asset(
                                "assets/images/Rectangle 31.png",
                                fit: BoxFit.fill,
                                height: 160,
                                width: 155,
                              )),
                          Positioned(
                            left: 130,
                            child: CustomIconWidget(
                              icon: Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                        const CustomContainerWidget(
                          height: 80,
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              CustomTextWidget(
                                text: "PINK PANTHER HOODIE",
                                fontSize: 12,
                                fontFamily: "Lora",
                              ),
                              CustomTextWidget(
                                text: "Rs.2300.00",
                                fontSize: 12,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomContainerWidget(
                                borderRadius: 8,
                                height: 25,
                                width: 155,
                                color: Colors.black,
                                child: Center(
                                    child: CustomTextWidget(
                                        text: "ADD TO CART",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30, bottom: 10),
                  child: CustomContainerWidget(
                    height: 240,
                    width: 155,
                    child: Column(
                      children: [
                        Stack(children: [
                          CustomContainerWidget(
                              height: 160,
                              width: 155,
                              // border: Border.all(color: Colors.grey),
                              // borderRadius: 5,
                              child: Image.asset(
                                "assets/images/Rectangle 32.png",
                                fit: BoxFit.fill,
                                height: 160,
                                width: 155,
                              )),
                          Positioned(
                            left: 130,
                            child: CustomIconWidget(
                              icon: Icons.favorite_border_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ]),
                        const CustomContainerWidget(
                          height: 80,
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              CustomTextWidget(
                                text: "PINK PANTHER HOODIE",
                                fontSize: 12,
                                fontFamily: "Lora",
                              ),
                              CustomTextWidget(
                                text: "Rs.2300.00",
                                fontSize: 12,
                                fontFamily: "Lora",
                                fontWeight: FontWeight.bold,
                              ),
                              CustomContainerWidget(
                                borderRadius: 8,
                                height: 25,
                                width: 155,
                                color: Colors.black,
                                child: Center(
                                    child: CustomTextWidget(
                                        text: "ADD TO CART",
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
