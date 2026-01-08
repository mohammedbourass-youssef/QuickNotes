# QuickNotes 📝

**QuickNotes** is a high-performance, lightweight note-taking application built with **Flutter**. It leverages modern development patterns like **Bloc (Cubit)** for state management and **Hive** for lightning-fast local data persistence. The app features a clean UI with dynamic theme switching to provide a premium user experience.

---

## ✨ Features

* **Fast Persistence:** Powered by **Hive**, ensuring your notes are saved and loaded almost instantly.
* **State Management:** Built using the **Cubit** pattern for predictable and clean state transitions.
* **Dynamic Theming:** Smooth switching between Light and Dark modes managed via a dedicated Theme Cubit.
* **Efficient CRUD:** Create, Read, Update, and Delete notes with real-time UI updates.
* **Search & Filter:** Easily find your notes with a responsive search system.
* **Clean Architecture:** Separated logic and UI for better maintainability and scalability.

---

## 🛠️ Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** [Dart](https://dart.dev/)
* **State Management:** [Bloc/Cubit](https://pub.dev/packages/flutter_bloc)
* **Local Database:** [Hive](https://www.google.com/search?q=https://pub.dev/packages/hive) (NoSQL)
* **Code Generation:** [Build Runner](https://pub.dev/packages/build_runner) (for Hive Adapters)

---

## 📂 Project Structure

The project follows a modular structure to separate business logic from the UI:

```text
lib/
├── cubits/          # Logic for Notes and Theme state
│   ├── notes_cubit/
│   └── theme_cubit/
├── models/          # Hive TypeAdapters and Data Models
├── views/           # UI Screens (Home, Add Note, etc.)
├── widgets/         # Reusable UI components (NoteCard, CustomTextField)
├── constants/       # App constants and theme data
└── main.dart        # App entry & Hive initialization

```

---

## 🚀 Getting Started

### Prerequisites

* [Flutter SDK](https://docs.flutter.dev/get-started/install)
* [Dart SDK](https://www.google.com/search?q=https://dart.dev/get-started/sdk)

### Installation

1. **Clone the repository:**
```bash
git clone https://github.com/mohammedbourass-youssef/QuickNotes.git

```


2. **Navigate into the project directory:**
```bash
cd QuickNotes

```


3. **Install dependencies:**
```bash
flutter pub get

```


4. **Generate Hive TypeAdapters:**
If you have modified the models or are running for the first time, run the build runner:
```bash
flutter pub run build_runner build

```


5. **Run the application:**
```bash
flutter run

```



---

## ⚙️ Logic & Implementation

### Local Storage (Hive)

We use **Hive** because it is a lightweight and blazing fast key-value database written in pure Dart. It is highly optimized for mobile devices and handles complex objects through TypeAdapters.

```dart
// Initialization Example
await Hive.initFlutter();
Hive.registerAdapter(NoteModelAdapter());
await Hive.openBox<NoteModel>('notes_box');

```

### State Management (Cubit)

The app uses **Cubit** to handle data flow and UI state:

* **NotesCubit:** Manages the list of notes, including adding, editing, and deleting operations.
* **ThemeCubit:** Persists and manages the brightness state (Light/Dark mode) globally.

---

## 👤 Contact

**Mohammed Bourass Youssef** * **GitHub:** [@mohammedbourass-youssef](https://www.google.com/search?q=https://github.com/mohammedbourass-youssef)

* **LinkedIn:** [Mohammed Bourass](https://www.linkedin.com/in/mohammed-bourass-39538a293/)
* **Telegram:** [@mb0629](https://www.google.com/search?q=https://t.me/mb0629)

---
