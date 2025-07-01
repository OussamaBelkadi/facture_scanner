import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'result_page.dart';

late List<CameraDescription> cameras;

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    loadCamera();
  }

  Future<void> loadCamera() async {
    cameras = await availableCameras();
    _controller = CameraController(cameras[0], ResolutionPreset.medium);
    await _controller.initialize();
    setState(() {
      _isInitialized = true;
    });
  }

  Future<void> scanText() async {
    final image = await _controller.takePicture();
    final inputImage = InputImage.fromFilePath(image.path);
    final textRecognizer = TextRecognizer();
    final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ResultPage(fullText: recognizedText.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) return Center(child: CircularProgressIndicator());

    return Scaffold(
      body: Stack(
        children: [
          CameraPreview(_controller),
          Positioned(
            bottom: 30,
            left: MediaQuery.of(context).size.width * 0.25,
            child: ElevatedButton.icon(
              icon: Icon(Icons.camera),
              label: Text("Scanner"),
              onPressed: scanText,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
