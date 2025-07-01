# 🧾 Facture Scanner – Flutter App

**Facture Scanner** est une application mobile développée avec **Flutter** qui permet de scanner des factures à l’aide de l’appareil photo du téléphone et d’extraire automatiquement les données importantes comme la date, le montant et le nom du fournisseur grâce à la reconnaissance de texte (OCR).

---

## 📸 Fonctionnalités

- 📷 Scanner une facture avec l'appareil photo
- 🔍 Extraire du texte imprimé grâce à **Google ML Kit OCR**
- 🧠 Identifier les champs clés automatiquement :
  - ✅ Montant total
  - ✅ Date de la facture
  - ✅ Fournisseur
- 🎨 Interface personnalisée avec navigation fluide

---

## 📁 Structure du projet

```plaintext
lib/
├── main.dart               # Point d'entrée principal
├── pages/
│   ├── home_page.dart      # Écran d'accueil
│   ├── camera_page.dart    # Prise de photo et OCR
│   └── result_page.dart    # Affichage des résultats
├── utils/
│   └── ocr_utils.dart      # Extraction des données avec regex
└── theme/
    └── app_theme.dart      # Thème visuel personnalisé