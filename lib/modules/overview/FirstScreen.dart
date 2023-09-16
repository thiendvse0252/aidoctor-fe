import 'package:ai_doctor/modules/overview/SecondScreen.dart';
import 'package:flutter/material.dart';

import '../../widgets/stateful/overview.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _State();
}

class _State extends State<FirstScreen> {

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
                    image: AssetImage('assets/images/Maps.png'),
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
              )),

              Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.navigate_next),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondScreen()),
                          );
                        },
                      ),
                    ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
