import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {

  final int result;
  final bool isMale;
  final int age;
  const BMIResultScreen({super.key,
    required this.result,
    required this.isMale,
    required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(
          Icons.arrow_back_ios_rounded,
        ),
          onPressed: ()
          {
            Navigator.pop(context);
          },
        ),
        title: const Text('BMI Result',),
        centerTitle: true,


      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text('Gender : ${isMale ? 'Male' : 'Female'} ',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text('Result : $result',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text ('Age : $age',
            style: const TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
      ),

    );
  }
}
