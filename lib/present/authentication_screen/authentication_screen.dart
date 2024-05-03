import 'package:flutter/material.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({Key? key});

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool _showList = false;
  String _selectedCountry = ''; // 선택된 국가

  List<String> items = ['🇰🇷 Korea', '🇺🇸 U.S.A', '🇯🇵 Japan'];
  List<String> countryCodes = ['+82', '+1', '+81']; // 국가 코드 목록

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                width: 400,
                height: 200,
                child: Text(
                  'Enter your phone\nnumber',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: ListTile(
                  title: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Text('Country'),
                      ),
                      SizedBox(width: 8),
                      IconButton(
                        icon: _showList ? Icon(Icons.arrow_drop_up) : Icon(Icons.arrow_drop_down),
                        onPressed: () {
                          setState(() {
                            _showList = !_showList;
                          });
                        },
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 200,
                        height: 33,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Phone Number',
                            suffixText: _selectedCountry,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (_showList)
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[200],
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return TextButton(
                          onPressed: () {
                            setState(() {
                              _selectedCountry = countryCodes[index];
                              _showList = false;
                            });
                          },
                          child: Text(items[index]),
                        );
                      },
                    ),
                  ),
                ),
              ),
            SizedBox(height: 20),
            Column(
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(380, 50)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                SizedBox(height: 20),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(380, 50)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Go back',
                    style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}