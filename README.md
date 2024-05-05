# mega_store_task

The Mega E-Commerce App is a comprehensive Flutter application designed to provide users with a seamless shopping experience. The app includes various features such as authentication, product browsing, favorites management, product details, product reviews, search functionality, cart management, profile management, and order tracking.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Project Structure](#project-structure)

## Introduction

The Mega E-Commerce App is a comprehensive Flutter application designed to provide users with a seamless shopping experience. The app includes various features such as authentication, product browsing, favorites management, product details, product reviews, search functionality, cart management, profile management, and order tracking.

## Features
1- Authentication: 
- Users can sign in or sign up to access the app's features and personalize their shopping experience.
2- Products and Categories:
- Browse through a wide range of products organized into categories for easy navigation.
3- Favorites:
- Users can add products to their favorites list for quick access and future reference.
4- Product Details:
- View detailed information about each product, including images, descriptions, prices, and specifications.
5- Product Reviews:
- Read and write reviews for products to help other users make informed purchasing decisions.
6- Search:
- Search for products by name, category, or keyword to find exactly what you're looking for.
7- Cart:
- Add products to the cart, update quantities, and proceed to checkout for a seamless purchasing process.
8- Profile:
- Manage user profiles, view order history, update personal information, and track orders.
9- Order Tracking:
- Keep track of the status of orders placed, including order confirmation, shipping, and delivery.

## Getting Started

### Prerequisites

Make sure you have Flutter and Dart installed on your machine. If not, follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install).

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/karar0120/mega_store.git
    cd icon-tech-app-flutter
    ```

2. Install dependencies:

    ```bash
    flutter pub get
    ```

3. Run the app:

    ```bash
    flutter run
    ```

## Project Structure

    .
    ├── core                       # For all common and core files.
    │   ├── error                  # contains all Exceptions and Failures classes
    │   ├── presentation           # Common presentation files
    |   │   └── blocs              # Common blocs
    |   │   └── pages              # Core pages
    |   │   └── widgets            # Common widgets
    │   └── route                  # Routes for navigation
    │   └── theme                  # Theme data
    │   └── usecases               # Common usecases
    |
    ├── data                       # Data Files of Feature 1
    │   ├── datasources            # DataSources Abstract Files and Implementations
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── models                 # Models for data
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Implementation Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    ├── domain                     # Domain
    │   ├── entities               # Entities For Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   ├── usecases               # Usecases of Feature 1
    │   │   └── feature            # Feature 1 (for exp : Todo Feature)
    │   │       └── sub-feat.      # Sub feature
    │   └── repositories           # Repositories Abstract Classes
    │       └── feature            # Feature 1 (for exp : Todo Feature)
    │           └── sub-feat.      # Sub feature
    └── presentation               # Presentation files
        ├── blocs                  # Blocs
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        ├── pages                  # Pages
        │   └── feature            # Feature 1 (for exp : Todo Feature)
        │       └── sub-feat.      # Sub feature
        └── widgets                # Widgets
            └── feature            # Feature 1 (for exp : Todo Feature)
                └── sub-feat.      # Sub feature

## Architecture

This app uses [***Clean Architecture by Robert C Martin***]

<img src="https://github.com/ResoCoder/flutter-tdd-clean-architecture-course/blob/master/architecture-proposal.png" style="display: block; margin-left: auto; margin-right: auto; width: 75%;"/>

Image Source : [ResoCoder](https://resocoder.com)

## Branches

    .
    ├── master                       # Contains the latest release
           ├── dev                   # Contains the latest development
                ├── feature1         # feature 1 created from dev
                ├── feature2         # feature 2 created from dev
                ├── feature3         # feature 3 created from dev
                ├── bugFix1          # bugfix 1 created from dev
                ├── bugFix2          # bugfix 1 created from dev
                ├── docChange1       # docChange 1 created from dev
                ├── docChange1       # docChange 2 created from dev

## Authentication:
- Users can sign in or sign up to access the app's features and personalize their shopping experience.


# :iphone: Screens
![Splash Screen](https://github.com/karar0120/mega_store/assets/92108624/c2303546-3c8a-4455-abe8-36d9999e5346)
![Login](https://github.com/karar0120/mega_store/assets/92108624/3b4ee7d4-dccb-4088-95ac-387b25eed42c)
![Register form](https://github.com/karar0120/mega_store/assets/92108624/731d08eb-62b3-4f73-9885-259acec35c07)
![Forget Pass](https://github.com/karar0120/mega_store/assets/92108624/403e49bb-3e24-4404-a5b8-7a78e439945b)
![New Password](https://github.com/karar0120/mega_store/assets/92108624/587e406a-9ba5-4df6-8d4f-35923983a9dc)



## Products and Categories:
- Browse through a wide range of products organized into categories for easy navigation.

# :iphone: Screens
![Home  en](https://github.com/karar0120/mega_store/assets/92108624/9d80d41a-c610-48ba-839f-42fa91b689e7)
![All Categories](https://github.com/karar0120/mega_store/assets/92108624/4750fbce-4b05-4ffb-8873-d893d3e6af5c)
![Products Page ( category - offer ) Archieve](https://github.com/karar0120/mega_store/assets/92108624/dc364900-3a37-4c61-88e2-2b35f1fbb17e)
![MY Favorite List](https://github.com/karar0120/mega_store/assets/92108624/52a8afe6-042b-4ae9-9bff-3206f6b20faa)
![Product Detail](https://github.com/karar0120/mega_store/assets/92108624/b86f8d02-0ee1-479c-bf80-7abc4c596dd3)

  
## Favorites:
- Users can add products to their favorites list for quick access and future reference.
# :iphone: Screens
![MY Favorite List](https://github.com/karar0120/mega_store/assets/92108624/37122fc2-bafd-4583-8e12-4763698b4cbe)


## Product Details: 
View detailed information about each product, including images, descriptions, prices, and specifications.
# :iphone: Screens
![Product Detail](https://github.com/karar0120/mega_store/assets/92108624/251b43e4-30d3-4a53-a4fd-9d6c89561503)


## Product Reviews: 
- Read and write reviews for products to help other users make informed purchasing decisions.
# :iphone: Screens
![Review Product](https://github.com/karar0120/mega_store/assets/92108624/da3a5305-0924-45c6-a203-757ecba39b3c)
![Write Review](https://github.com/karar0120/mega_store/assets/92108624/e0b12eb4-0297-41d6-96eb-d866a20e5a54)


## Search: 
Search for products by name, category, or keyword to find exactly what you're looking for..
# :iphone: Screens
![Search Result](https://github.com/karar0120/mega_store/assets/92108624/0439f728-74a2-442a-8a28-5dc972906da7)

## Cart: 
Add products to the cart, update quantities, and proceed to checkout for a seamless purchasing process.
# :iphone: Screens
![Cart](https://github.com/karar0120/mega_store/assets/92108624/0b0a605a-9218-4234-a38c-eddb8c24893a)


## Profile: 
- Manage user profiles, view order history, update personal information, and track orders.
# :iphone: Screens
![Profile](https://github.com/karar0120/mega_store/assets/92108624/a10db6ad-b6cd-4a34-bce6-8972c95e8ff3)

## Order Tracking: 
- Keep track of the status of orders placed, including order confirmation, shipping, and delivery.
# :iphone: Screens
![Order Details](https://github.com/karar0120/mega_store/assets/92108624/04fdea04-b3b9-4839-bf84-2aced1d2a7ff)
