# Purify - Psychological Consultation App

Purify is an Android application built with Flutter that provides users with a platform to consult with licensed psychologists. The app enables users to connect with doctors for psychological consultations, book appointments, and access various mental health resources.

## Features

- **User Authentication**: Secure sign-in and sign-up using Firebase Authentication.
- **Doctor Consultation**: Browse a list of available psychologists, view their profiles, and book consultation appointments.
- **Live Video Consultation**: Engage in real-time consultations with doctors using the Agora RTC engine.
- **Mental Health Articles**: Access a library of articles related to mental health and well-being.
- **Profile Management**: Users can manage their profiles, view past consultations, and update personal information.
- **Appointment Scheduling**: Book, reschedule, and manage consultation appointments directly within the app.

## Dependencies

The project uses the following Flutter packages:

- `firebase_core`: Core functionalities of Firebase.
- `firebase_auth`: User authentication and sign-in.
- `cloud_firestore`: Storing and managing user data.
- `mysql1`: Interaction with MySQL databases.
- `carousel_slider`: Image carousel for displaying banners or promotional content.
- `agora_rtc_engine`: Real-time video/audio for live consultations.
- `permission_handler`: Handling runtime permissions.
- `auto_size_text`: Automatic text resizing to fit within the available space.
- `http`: Making HTTP requests to APIs.
- `flutter_lints`: Recommended linter rules for Flutter projects.
- `cupertino_icons`: Default icons for iOS style.

## Assets

The project includes various assets:

- Doctor images (`doctor1.png`, `doctor2.png`, etc.)
- Customer images (`customer1.png`)
- Icons and logos (`profile_image.png`, `logo.png`)
- Article images (`article1.png`, `article2.png`, etc.)

## Getting Started

To get started with Purify, ensure you have Flutter installed and set up on your machine. Clone the repository and install the required dependencies.

```bash
git clone https://github.com/username/purify.git
cd purify
flutter pub get
