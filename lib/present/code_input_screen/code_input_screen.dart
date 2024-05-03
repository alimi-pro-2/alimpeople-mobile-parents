import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'code_input_state.dart';

class CodeInputScreen extends StatelessWidget {
  const CodeInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 300),
                  child: Container(
                    width: 130,
                    child: Text(
                      ' Enter SMS code',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),
                      AuthCodeTextField(
                        focusNode: FocusNode(),
                        nextFocusNode: FocusNode(),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 50),

                TextButton(
                    onPressed: () {
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(380, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 18, ))),

                    SizedBox(height: 20),

                TextButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(380, 50)),
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    child: Text('Go back',style: TextStyle(color: Colors.blue,fontSize: 18, fontWeight: FontWeight.bold ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
