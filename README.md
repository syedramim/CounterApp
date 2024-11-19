# CounterApp

CounterApp is a SwiftUI-based application that allows users to manage multiple counters dynamically. This project demonstrates the use of SwiftUI and the MVVM (Model-View-ViewModel) architecture for scalable and maintainable iOS development.

## Features

- Add, increment, decrement, and delete counters dynamically.
- Color-coded counters for visual feedback:
  - Green for positive values
  - Gray for zero
- Simple and intuitive user interface with responsive design.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/CounterApp.git
2. Open the project in Xcode:
   ```bash
   open CounterApp.xcodeproj
3. Build and run the app on a simulator or physical device.

## Overview

The app follows the MVVM architecture:

- **Model**: `Counter` struct for representing counters.
- **ViewModel**: `CounterViewModel` class for managing counter logic.
- **View**: `CounterView` struct for the user interface.

## Usage

- Launch the app.
- Tap **Add Counter** to create a new counter.
- Use the **+** and **−** buttons to adjust the counter value.
- Tap the **trash** icon to delete a counter.
