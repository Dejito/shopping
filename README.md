# Credpal Shopping UI Clone

A high-fidelity Flutter implementation of the CredPal shopping interface, featuring a horizontal 
product grid with peek effects, a merchant directory, and custom search components.

## Prerequisites

This flutter project is built with SDK version '>=3.4.3 <4.0.0'

Home Overview,Featured Merchants,Search Component
"<img src=""assets/screenshots/screenshot1.png"" width=""250"">","<img src=""assets/screenshots/screenshot2.png"" width=""250"">","<img src=""assets/screenshots/screenshot1.png"" width=""250"">"

## Features

Custom Search Bar: A fully rounded search input paired with a modular scan action button.

Horizontal Product Grid: Implements a "peek" effect allowing users to see the next set of items, optimized with 
specific constraints to prevent layout overflows.

Merchant Directory: A responsive grid of featured brands with custom "online status" indicators and brand-specific
color themes.

Adaptive Layouts: Carefully managed RenderFlex constraints to ensure smooth rendering across various device sizes.


## Project Structure

The project follows a standard Flutter project structure:

assets/images/: Contains product images and brand logos.
assets/screenshots/: Documentation images for the repository.
lib/data/: Contains the data models(product and merchant) and list of the model data type used in the app.
lib/ui/screen/: contains Dashboard that renders the widgets.
lib/ui/widgets/: Modularized Stateless widgets including CustomSearchBar, ProductGridItem, and MerchantItem.