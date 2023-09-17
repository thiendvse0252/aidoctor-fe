
import 'package:ai_doctor/modules/authenticate/LoginScreen.dart';
import 'package:ai_doctor/modules/overview/widgets/overviewWidget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/stateful/overview.dart';


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Overview()
              ,
              Container(
                height: deviceHeight * 0.34,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Order.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),

              Container(
                height: deviceHeight * 0.2,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(builder: (ctx, constraints){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      RichText(text: const TextSpan(
                        text: 'Convenient',
                        style: TextStyle(
                          color: Color(0xFF8EA0B5),
                          fontSize: 29,
                        ),
                      )),

                      SizedBox(
                          height: constraints.maxHeight * 0.15),

                      RichText(text: const TextSpan(
                        text: 'Online healthcare service',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      )),
                    ],
                  );
                }
                ),


              ),

              overviewWidget(
                pageRoute: const LoginScreen(),
              ),
            ],

          ),

        ),
      ),
    );

  }
}

