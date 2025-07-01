import 'package:flutter/material.dart';
import 'camera_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanner de Factures')),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.camera_alt),
          label: Text('Scanner une facture'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            textStyle: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => CameraPage()));
          },
        ),
      ),
    );
  }
}
