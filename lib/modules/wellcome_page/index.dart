import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class WellcomePage extends StatefulWidget {
  const WellcomePage({super.key});

  @override
  State<WellcomePage> createState() => _WellcomePageState();
}

class _WellcomePageState extends State<WellcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Center(
                child: Text(
              'CHÀO MỪNG BẠN ĐẾN VỚI MOLA TV',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
          ),
          Container(
            child: Center(child: Image.asset("assets/images/logo.png")),
          ),
          Container(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
                child: Text(
              'Vui lòng đăng nhập để sử dụng ứng dụng',
              style: TextStyle(fontSize: 16, color: Colors.white),
            )),
          )),
          Container(
            child: Center(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                label: Text('Đăng nhập với Facebook'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                icon: Icon(Icons.facebook),
              ),
            )),
          ),
          Container(
            child: Center(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                ),
                label: Text('Đăng nhập với Google'),
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                icon: Icon(Icons.security_update_good_rounded),
              ),
            )),
          ),
          Container(
            child: Center(
                child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(300, 50),
                ),
                label: Text('Tiếp tục mà không đăng nhập '),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: Icon(Icons.home),
              ),
            )),
          ),
        ],
      ),
      backgroundColor: Colors.grey[600],
    );
  }
}
