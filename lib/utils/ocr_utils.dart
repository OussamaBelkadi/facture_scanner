String extractMontant(String text) {
  final montantRegex = RegExp(r'(\d+[.,]?\d{2}) ?€');
  return montantRegex.firstMatch(text)?.group(1) ?? 'Non détecté';
}

String extractDate(String text) {
  final dateRegex = RegExp(r'\b\d{2}/\d{2}/\d{4}\b');
  return dateRegex.firstMatch(text)?.group(0) ?? 'Non détectée';
}

String extractFournisseur(String text) {
  final fournisseurRegex = RegExp(r'(Société|Fournisseur|Facturé par)[:\s]*([A-Za-z0-9 &]+)');
  return fournisseurRegex.firstMatch(text)?.group(2) ?? 'Non détecté';
}
