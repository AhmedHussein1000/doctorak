<div align="center">

<img src="assets/images/app_icon.png" width="120" alt="Doctorak Logo"/>

# 🩺 Doctorak

**A modern medical appointment booking app built with Flutter**

[![Flutter](https://img.shields.io/badge/Flutter-3.10+-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.10+-0175C2?logo=dart&logoColor=white)](https://dart.dev)
[![Architecture](https://img.shields.io/badge/Architecture-Clean-blueviolet)](#-architecture)
[![State](https://img.shields.io/badge/State-Cubit-orange)](#-tech-stack)
[![License](https://img.shields.io/badge/License-MIT-green)](#-license)

Doctorak allows patients to discover doctors across specializations and cities, book appointments seamlessly, and manage their healthcare journey — all from a beautifully crafted mobile experience.

---

[Features](#-features) •
[Demo](#-demo) •
[Tech Stack](#-tech-stack) •
[Architecture](#-architecture) •
[Getting Started](#-getting-started) •
[Project Structure](#-project-structure) •
[Testing](#-testing)

</div>

---

## ✨ Features

| Category | Details |
|---|---|
| **🔐 Authentication** | User registration & login with secure token storage |
| **🏠 Home Dashboard** | Browse specializations, featured doctors & quick actions |
| **🔍 Doctor Search** | Real-time search with debounce optimization |
| **🏙️ City-Based Browsing** | Discover doctors filtered by city |
| **👨‍⚕️ Doctor Details** | View doctor profiles, specialization, experience & availability |
| **📅 Appointment Booking** | Multi-step booking flow with date & time selection |
| **💳 Multi-Gateway Payments** | Stripe, PayPal & Paymob (Card, Wallet) integration |
| **📋 My Appointments** | Track upcoming, completed & cancelled appointments |
| **🔔 Local Notifications** | Scheduled appointment reminders |
| **👤 User Profile** | View & update personal information with avatar support |
| **🌐 Network Monitoring** | Real-time connectivity status with graceful handling |
| **📊 Error Monitoring** | Sentry integration for production crash reporting |

---

## 🎬 Demo


<div align="center">
  <a href="https://drive.google.com/file/d/1Nh79VlHpIPyEHdYCCP__b2bi-amBLlVe/view?usp=drive_link">▶️ Watch the full demo</a>
</div>

---

## 🛠️ Tech Stack

<table>
<tr><td><b>Category</b></td><td><b>Technology</b></td></tr>
<tr><td>Framework</td><td>Flutter</td></tr>
<tr><td>Language</td><td>Dart (Null-Safe)</td></tr>
<tr><td>State Management</td><td>flutter_bloc / Cubit / HydratedBloc</td></tr>
<tr><td>Data Classes & States</td><td>Freezed + JSON Serializable</td></tr>
<tr><td>Navigation</td><td>GoRouter (Declarative, Named Routes)</td></tr>
<tr><td>Networking</td><td>Dio with interceptors & pretty logging</td></tr>
<tr><td>Dependency Injection</td><td>GetIt (Service Locator)</td></tr>
<tr><td>Responsive UI</td><td>flutter_screenutil</td></tr>
<tr><td>Secure Storage</td><td>flutter_secure_storage</td></tr>
<tr><td>Payments</td><td>Stripe / PayPal / Paymob</td></tr>
<tr><td>Notifications</td><td>flutter_local_notifications + timezone</td></tr>
<tr><td>Image Handling</td><td>cached_network_image, image_picker, flutter_svg</td></tr>
<tr><td>Error Monitoring</td><td>Sentry (Production only)</td></tr>
<tr><td>Code Generation</td><td>build_runner, freezed, json_serializable</td></tr>
<tr><td>Testing</td><td>bloc_test, mockito, flutter_test</td></tr>
</table>

---

## 🏛️ Architecture

The project follows **Clean Architecture** principles with a clear separation of concerns:

```
┌──────────────────────────────────────────────────────────────┐
│                    Presentation Layer                        │
│              (Screens, Widgets, Cubits)                      │
├──────────────────────────────────────────────────────────────┤
│                      Domain Layer                            │
│           (Entities, Repositories, Use Cases)                │
├──────────────────────────────────────────────────────────────┤
│                       Data Layer                             │
│       (Models, Data Sources, Repository Impl)                │
└──────────────────────────────────────────────────────────────┘
```

- **Domain** depends on nothing — pure Dart entities and abstract repository contracts.
- **Data** implements domain contracts, handles API communication & JSON serialization.
- **Presentation** consumes domain via Cubits; UI is passive and reacts to state changes.

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `^3.10.3`
- Dart SDK `^3.10.3`
- Android Studio / VS Code
- An Android emulator or physical device

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/AhmedHussein1000/doctorak.git
   cd doctorak
   ```

2. **Set up environment variables**

   Copy the example environment file and fill in your payment keys:

   ```bash
   cp .env.example .env
   ```

   ```env
   STRIPE_PUBLISHABLE_KEY=your_stripe_publishable_key
   STRIPE_SECRET_KEY=your_stripe_secret_key
   PAYPAL_CLIENT_ID=your_paypal_client_id
   PAYPAL_SECRET_KEY=your_paypal_secret_key
   PAYMOB_API_KEY=your_paymob_api_key
   PAYMOB_SECRET_KEY=your_paymob_secret_key
   PAYMOB_KIOSK_INTEGRATION_ID=your_kiosk_id
   PAYMOB_WALLET_INTEGRATION_ID=your_wallet_id
   PAYMOB_CARD_INTEGRATION_ID=your_card_id
   PAYMOB_IFRAME_ID=your_iframe_id
   ```

3. **Install dependencies**

   ```bash
   flutter pub get
   ```

4. **Run code generation**

   ```bash
   dart run build_runner build --delete-conflicting-outputs
   ```

5. **Run the app**

   ```bash
   # Development (with Device Preview)
   flutter run -t lib/main_development.dart

   # Production
   flutter run -t lib/main_production.dart
   ```

---

## 📁 Project Structure

```
lib/
├── core/
│   ├── caches/             # Cache keys & local storage helpers
│   ├── config/             # App configuration (payment keys, etc.)
│   ├── di/                 # Dependency injection (GetIt service locator)
│   ├── enums/              # Shared enums
│   ├── errors/             # Error handling & failure models
│   ├── functions/          # Global utility functions
│   ├── helpers/            # Extensions & helper classes
│   ├── network/            # Dio service, API constants, network cubit
│   ├── router/             # GoRouter setup, route names & paths
│   ├── services/           # Notification, Stripe & PayPal services
│   ├── shared/             # Shared entities & models
│   ├── themes/             # App colors, styles & theme data
│   ├── utils/              # General utilities
│   └── widgets/            # Reusable UI components
│
├── features/
│   ├── appointments/       # Booking flow, my appointments, payments
│   │   ├── data/           #   Models, data sources, repo implementation
│   │   ├── domain/         #   Entities, repository contracts
│   │   └── presentation/   #   Cubits, screens, widgets
│   ├── cities/             # City listing & doctors by city
│   ├── home/               # Home dashboard, specializations, doctor lists
│   ├── login/              # User authentication (login)
│   ├── signup/             # User registration
│   ├── search/             # Doctor search with debounce
│   ├── profile/            # User profile management
│   ├── notifications/      # Local notification management
│   ├── main_layout/        # Bottom navigation shell layout
│   └── on_boarding/        # Onboarding screens
│
├── docdoc_app.dart         # Root app widget with global providers
├── main_development.dart   # Development entry point (Device Preview ON)
└── main_production.dart    # Production entry point (Sentry enabled)

test/
└── features/
    ├── appointments/       # Appointment cubit & repository tests
    ├── auth/               # Login & signup tests
    └── home/               # Home feature tests
```

---

## 🧪 Testing

The project includes **unit tests** and **cubit tests** following the **Arrange → Act → Assert** pattern:

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run a specific test file
flutter test test/features/auth/login_cubit_test.dart
```

Tests cover:
- **Cubit state transitions** — verifying correct state emissions for loading, success & error flows.
- **Repository implementations** — ensuring proper data mapping and error handling.
- **Mocked dependencies** — using Mockito for isolating units under test.

---

## 🔒 Security

- Payment credentials are loaded from environment variables (`.env`) — never hardcoded.
- User tokens are stored using `flutter_secure_storage`.
- The `.env` file is excluded from version control via `.gitignore`.

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

