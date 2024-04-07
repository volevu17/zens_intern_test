# Zens Test Flutter
[Live Demo](https://vlv-zens-intern.vercel.app)
This repository demonstrates the implementation of the MVVM (Model-View-ViewModel) design pattern in Flutter.

## MVVM Architecture
![vlv-mvvm](https://github.com/volevu17/zens_intern_test/assets/121816250/6f84f4d5-a2ed-4861-a6b2-127bcd5f00ab)

MVVM is a software architectural pattern that separates the development of graphical user interface (UI) from the business logic or back-end logic (the data model). It consists of three components:

1. **Model**: Represents the data and business logic of the application.
2. **View**: Presents the data to the user and handles user interactions.
3. **ViewModel**: Acts as a link between the Model and the View, providing data from the Model to the View and handling user interactions by modifying the Model.

## Structure

The code in this repository follows the MVVM architecture, where each component plays a distinct role:

- **Model**: Contains the data structures and business logic.
- **View**: Represents the UI components and is responsible for displaying data to the user.
- **ViewModel**: Mediates communication between the Model and the View, providing data to be displayed and handling user interactions.
