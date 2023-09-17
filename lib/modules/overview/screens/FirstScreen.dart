
import 'package:ai_doctor/modules/overview/screens/SecondScreen.dart';
import 'package:ai_doctor/modules/overview/widgets/overviewWidget.dart';
import 'package:flutter/material.dart';

import '../../../widgets/stateful/overview.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Overview(),
              Container(
                height: deviceHeight * 0.30,
                width: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Maps.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),

              Container(
                height: deviceHeight * 0.2,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(builder: (ctx, constraints){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      RichText(text: const TextSpan(
                        text: 'Nearby healthcare service',
                        style: TextStyle(
                          color: Color(0xFF8EA0B5),
                          fontSize: 29,
                        ),
                      )),

                      SizedBox(
                          height: constraints.maxHeight * 0.20),

                      RichText(text: const TextSpan(
                        text: 'Don\'t have to go far to find a good service',
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

              const SizedBox(
                  height: 34),

              overviewWidget(
                pageRoute: const SecondScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
