import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calc",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body:Center(
        child:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("",style: TextStyle(fontSize:25,fontWeight: FontWeight.w700),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed:(){},
                      child:const Text("+"),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                      child:const Text("-"),
                    ),
                ],),
                const Text("",style: TextStyle(fontSize:25,fontWeight: FontWeight.w700),),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      onPressed:(){},
                      child:const Text("+"),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                      child:const Text("-"),
                    ),
                ],),
            ],),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("add +")
            ),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("-")
            ),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("*")
            ),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("/")
            ),
            ElevatedButton(
              onPressed: (){}, 
              child:const Text("^")
            ),
            Container(
              width:double.infinity,
              height: 50.0,
              decoration:const BoxDecoration(color: Colors.lightBlue),
              alignment: Alignment.center,
              child:const Text("="),
            )
        ],), 
      ),
    );
  }
}
