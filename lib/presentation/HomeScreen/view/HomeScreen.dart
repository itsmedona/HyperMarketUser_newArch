import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orangeAccent),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left: 15,right: 15,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      color: Colors.black26.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[ BoxShadow(
                        color: Colors.black12,blurRadius: 1,spreadRadius: 1,
                      ),
                      ],
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.deepOrangeAccent),
                        border: InputBorder.none,
                        label: Text("Find your product...",
                        style: TextStyle(),
                        )
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width/6,
                    decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(0.05),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow:[ BoxShadow(
                        color: Colors.black12,blurRadius: 1,spreadRadius: 1,
                      ),
                      ],
                    ),
                    child: Center(
                      child: Icon(Icons.notifications,
                      color: Colors.deepOrangeAccent),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white38,
                borderRadius: BorderRadius.circular(20),
                ),
              )
              ],
              

            ),)),
      ),
    );
  }
}