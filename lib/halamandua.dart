import 'package:flutter/material.dart';

class HalamanKedua extends StatefulWidget {
  const HalamanKedua({super.key});

  @override
  State<HalamanKedua> createState() => _HalamanKeduaState();
}

class _HalamanKeduaState extends State<HalamanKedua> {
  int _hitung = 0;
  //function counter
  void _click() {
    setState(() {
      //fungsi
      _hitung += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Halaman Kedua',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _click();
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            _hitung.toString(),
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
