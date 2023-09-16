import 'package:flutter/material.dart';

import '../../widgets/stateful/overview.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Overview()
              ,
              Container(
                height: deviceHeight * 0.30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Order.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              RichText(text: TextSpan(
                text: 'Nearby healthcare service',
                style: const TextStyle(
                  color: Color(0xFF8EA0B5),
                  fontSize: 18,
                ),
              )),

              RichText(text: TextSpan(
                text: 'Don\'t have to go far to find a good service',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
