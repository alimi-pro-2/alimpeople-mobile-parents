import 'package:flutter/material.dart';

class CheckListScreen extends StatelessWidget {
  const CheckListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                  '알리미 프로',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            )),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Log out',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.grey[300],
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add_chart),
                  padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), // 필요에 따라 패딩 조정
                ),
                Text('출결'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
