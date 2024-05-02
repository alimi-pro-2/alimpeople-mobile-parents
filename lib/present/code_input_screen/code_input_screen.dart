import 'package:flutter/material.dart';

class CodeInputScreen extends StatelessWidget {
  const CodeInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 300, top: 300),
                  child: Container(
                    child: Text(
                      ' Enter SMS code',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: TextField(

                        ),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
