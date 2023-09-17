import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                title: const Center(
                  child: Text('Dong Khoi St, District 1',style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,

                  ),),
                ),
                actions: [
                  const Icon(
                      Icons.add_business_outlined,
                  ),
                  IconButton(
                    icon:  const Icon(Icons.menu),
                    alignment: Alignment.bottomLeft,
                    color: Colors.white,
                    iconSize: 30,
                    onPressed: (){
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
