import 'package:flutter/material.dart';

class InstagramConnectSwitch extends StatefulWidget {
  const InstagramConnectSwitch({super.key});

  @override
  State<InstagramConnectSwitch> createState() =>
      _InstagramConnectSwitchState();
}

class _InstagramConnectSwitchState extends State<InstagramConnectSwitch> {
  // Menentukan status awal sakelar (false = mati/off)
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Instagram Connect Switch Example')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Connect Instagram'),
            const SizedBox(width: 8),
            Switch(
              // Menampilkan posisi sakelar sesuai nilai boolean variabel isOn
              value: isOn,
              onChanged: (bool val) {
                setState(() {
                  // Memperbarui state sakelar saat digeser lalu menggambar ulang widget
                  isOn = val;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
