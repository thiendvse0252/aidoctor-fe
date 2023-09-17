import 'package:flutter/material.dart';

import '../../authenticate/LoginScreen.dart';
import '../screens/SecondScreen.dart';

class overviewWidget extends StatelessWidget {
  Widget pageRoute;
  overviewWidget({super.key, required this.pageRoute});
  //const overviewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 6),
            child: TextButton(
                style: TextButton.styleFrom(
                  //backgroundColor: Colors.transparent,
                    textStyle: const TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    )
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text('Skip')),
          ),


          Container(
            margin: const EdgeInsets.only(left: 270),
            child: IconButton(
              icon:  const Icon(Icons.navigate_next),
              color: Colors.white,
              iconSize: 35,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pageRoute),
                );
              },
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      ),
    );
  }
}
