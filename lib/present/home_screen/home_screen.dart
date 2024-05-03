import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 150),
          Center(
            child: Text('ALIMIPRO',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Text('학원, 유치원, 공부방 등하원 알림 서비스',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 300),
          TextButton(
              onPressed: () {
                GoRouter.of(context).go("/authentication");
              },
              child: Text(
                '보호자 전화 인증',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
