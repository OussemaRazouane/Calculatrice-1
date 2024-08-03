import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int n1 = 0, n2 = 0;
  num? result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calc",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.calculate_outlined,size:30),
          SizedBox(width:120,),
        ],
        backgroundColor: Colors.lightBlue.shade200,
      ),
      backgroundColor: Colors.lightBlue.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "$n1",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          n1++;
                        });
                      },
                      child: const Text("+"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          n1--;
                        });
                      },
                      child: const Text("-"),
                    ),
                  ],
                ),
                Text(
                  "$n2",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          n2++;
                        });
                      },
                      child: const Text("+"),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          n2--;
                        });
                      },
                      child: const Text("-"),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = n1 + n2;
                  });
                },
                child: const Text("Addition +")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = n1 - n2;
                  });
                },
                child: const Text("Substraction -")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = n1 * n2;
                  });
                },
                child: const Text("Multiplication  *")),
            ElevatedButton(
                onPressed: () {
                  if (n2 == 0) {
                    setState(() {
                      result = null;                
                    });
                  } else {
                    setState(() {
                      result = n1 ~/ n2;
                    });
                  }
                },
                child: const Text("Division /")),
            Container(
              margin:const EdgeInsets.all(5),
              width: double.infinity,
              height: 50.0,
              decoration:
                  BoxDecoration(color:const Color.fromARGB(255, 36, 150, 139),borderRadius:BorderRadius.circular(5) ),
              alignment: Alignment.center,
              child: Text("Result = $result",
                style: const TextStyle(
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
