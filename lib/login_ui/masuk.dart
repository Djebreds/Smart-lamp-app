import 'package:flutter/material.dart';

class Masuk extends StatelessWidget {
  const Masuk({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue.shade800,
                  Colors.blue.shade400,
                ]
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80,),
            const Center(
              child: Image(
                width: 200,
                height: 200,
                image: AssetImage('assets/tugaslogo.png'),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            const Center(
              child: Text('By Kelompok', style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold,),),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                      onPressed: (){},
                      height: 50,
                      minWidth: 150,
                      child: const Text('Login', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      color: Colors.blue.shade400,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    MaterialButton(
                      onPressed: (){},
                      height: 50,
                      minWidth: 150,
                      child: const Text('Register', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      color: Colors.blue.shade400,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
