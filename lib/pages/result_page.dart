import 'package:flutter/material.dart';
import '../utils/ocr_utils.dart';

class ResultPage extends StatelessWidget {
  final String fullText;

  const ResultPage({required this.fullText});

  @override
  Widget build(BuildContext context) {
    final montant = extractMontant(fullText);
    final date = extractDate(fullText);
    final fournisseur = extractFournisseur(fullText);

    return Scaffold(
      appBar: AppBar(title: Text("Résultat de l'analyse")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("📅 Date : $date", style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text("💰 Montant : $montant €", style: TextStyle(fontSize: 18)),
                SizedBox(height: 10),
                Text("🏢 Fournisseur : $fournisseur", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
