# CredPal Shopping UI Clone

![Flutter](https://img.shields.io/badge/Flutter-3.4+-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green)

A high-fidelity **Flutter UI clone** of the CredPal shopping interface, featuring a horizontal
product grid with peek effects, a merchant directory, and custom search components.

---

## Screenshots

<p float="left">
  <img src="assets/screenshots/screenshot1.png" width="250" />
  <img src="assets/screenshots/screenshot2.png" width="250" />
</p>

<sub>Available Products · Featured Merchants · Search Component</sub>

---

## Prerequisites

- **Flutter SDK:** `>=3.4.3 <4.0.0`
- **Dart:** 3.4.3(stable)

---

## Features

- **Custom Search Bar**  
  Search input with a modular scan action button.

- **Horizontal Product Grid (Peek Effect)**  
   Nudges users of more products features  
  `RenderFlex` and overflow issues.

- **Merchant Directory**  
  Responsive brand grid with custom *online status* indicators and brand-specific color themes.

- **Adaptive Layouts**  
  Explicit constraint management to ensure smooth rendering across various screen sizes.

---

## Project Structure

The project follows a standard Flutter layout:

```text
assets/
 ├── images/        # Product images and brand logos
 └── screenshots/   # README documentation images

lib/
 ├── data/          # Models (Product, Merchant) + mock data
 └── ui/
     ├── screen/    # Dashboard screen
     └── widgets/   # CustomSearchBar, ProductGridItem, MerchantItem
