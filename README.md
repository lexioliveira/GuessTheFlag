# 🏴 Guess The Flag

An interactive game developed with SwiftUI that tests your knowledge of flags from different countries. Guess which flag corresponds to the displayed country!

## 📱 About the Project

Guess The Flag is an educational iOS app where the player must identify the correct flag among three options. The game presents 8 questions per round and maintains a score based on correct answers.

## 🎮 Features

- Interactive flag guessing game
- 11 different country flags included
- Scoring system
- Modern interface with radial gradient
- Feedback alerts for correct and incorrect answers
- Automatic restart after 8 questions

## 🎨 Included Flags

The game includes flags from the following countries:
- 🇪🇪 Estonia
- 🇫🇷 France
- 🇩🇪 Germany
- 🇮🇪 Ireland
- 🇮🇹 Italy
- 🇳🇬 Nigeria
- 🇵🇱 Poland
- 🇪🇸 Spain
- 🇬🇧 United Kingdom
- 🇺🇦 Ukraine
- 🇺🇸 United States
- 🇲🇨 Monaco

## 🛠️ Technologies and Concepts Learned

This project was developed as part of learning SwiftUI and covers the following concepts:

### SwiftUI Fundamentals
- **@State Property Wrappers**: Reactive state management for the interface
- **View Composition**: Building interfaces through nested views
- **Declarative UI**: SwiftUI's declarative paradigm

### Layouts and Components
- **ZStack**: Layering views in depth (background and content)
- **VStack**: Vertical organization of elements
- **RadialGradient**: Creating radial gradients for backgrounds
- **Spacer**: Flexible spacing control

### Interactive Components
- **Button**: Buttons with custom actions
- **Image**: Display and manipulation of asset images
- **Text**: Text styling with different sizes and weights
- **Alert**: Presenting modal alerts with feedback

### Visual Styling
- **clipShape()**: Applying shapes (such as `.buttonBorder` and `.rect`)
- **shadow()**: Adding shadows for visual depth
- **foregroundStyle()**: Applying color styles (including `.secondary`)
- **background()**: Applying backgrounds (including `.regularMaterial`)
- **Dynamic Type**: Automatic support for different system font sizes

### Logic and Functionality
- **Arrays and Shuffling**: Using `shuffled()` for randomization
- **Random Numbers**: Generating random numbers with `Int.random(in:)`
- **State Management**: Game state control (score, questions, etc.)
- **Functions**: Organizing logic into reusable functions

### Swift Language Features
- **Closures**: Using trailing closures in button actions
- **String Interpolation**: String interpolation for dynamic display
- **Array Methods**: Array manipulation (shuffle, indexing)

## 📂 Project Structure

```
GuessTheFlag/
├── GuessTheFlag/
│   ├── Assets.xcassets/        # Image assets (flags)
│   ├── ContentView.swift       # Main game view
│   └── GuessTheFlagApp.swift   # Application entry point
└── README.md
```

## 🚀 How to Run

1. Open the project in Xcode
2. Make sure the deployment target is set to iOS 15.0 or higher
3. Run the project (⌘ + R) or select a simulator/device
4. Have fun playing!

## 🎯 Game Rules

1. The game displays a country name
2. Three flags are presented
3. Tap the flag that corresponds to the mentioned country
4. You receive immediate feedback on your answer
5. After 8 questions, the game automatically restarts
6. Your score is displayed and updated in real time

## 📝 Requirements

- iOS 15.0+
- Xcode 13.0+
- Swift 5.5+

## 📚 Learning Resources

This project demonstrates fundamental iOS development practices with SwiftUI, including:
- Declarative UI architecture
- State management
- Responsive design
- Image asset integration
- Visual feedback to users

## 👤 Author

**Lexi Oliveira**
- Created on: October 30, 2025

---

Developed with ❤️ using SwiftUI
