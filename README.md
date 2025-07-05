# Smooth Circular Page Indicator

A lightweight and customizable **smooth circular page indicator** widget for Flutter.  
Perfect for onboarding flows, quizzes, forms, or any step-based user interface.

---

![Demo](https://github.com/dev-KarimAhmed/Smooth_circular_page_indicator_package/raw/main/assets/demo.gif)

---

## ✨ Features

- Smooth, animated circular progress indicator
- Fully customizable colors, sizes, and stroke width
- Center icon/button with tap support
- Accessible with semantic labels
- Easy to integrate and reuse

---



## 🚀 Getting Started

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  smooth_circular_page_indicator: ^0.0.2

```
----
## 🎯 Usage Example

```dart


SmoothCircularPageIndicator(
  currentStep: 2, // Zero-based index
  totalSteps: 5,
  progressColor: Colors.blue,
  backgroundColor: Colors.grey.shade300,
  icon: Icons.arrow_forward_ios_rounded,
  iconColor: Colors.white,
  size: 80.0,
  strokeWidth: 5.0,
  animationDuration: Duration(milliseconds: 500),
  onTap: () {
    // Do something when tapped
  },
  semanticLabel: 'Next step',
),
```


## 🧩 Parameters

| Property            | Type            | Description                                 | Default                           |
| ------------------- | --------------- | ------------------------------------------- | --------------------------------- |
| `currentStep`       | `int`           | Current step (zero-based).                  | —                                 |
| `totalSteps`        | `int`           | Total number of steps (must be > 0).        | —                                 |
| `progressColor`     | `Color`         | Color of the progress arc.                  | `Colors.blue`                     |
| `backgroundColor`   | `Color`         | Color of the background arc.                | `Colors.grey`                     |
| `icon`              | `IconData`      | Icon displayed in the center.               | `Icons.arrow_forward_ios_rounded` |
| `iconColor`         | `Color`         | Color of the center icon.                   | `Colors.white`                    |
| `size`              | `double`        | Diameter of the widget.                     | `80.0`                            |
| `strokeWidth`       | `double`        | Width of the circular stroke.               | `5.0`                             |
| `animationDuration` | `Duration`      | Duration of the progress animation.         | `500 milliseconds`                |
| `onTap`             | `VoidCallback?` | Callback triggered when tapped.             | `null`                            |
| `semanticLabel`     | `String?`       | Optional semantic label for screen readers. | `null`                            |


## 📌 Example Use Cases
- Onboarding screens

- Multi-step forms

- Quizzes & surveys

- Tutorials & walkthroughs

- Any step-based progress UI

## 🛠️ Contributing
Contributions, suggestions, and bug reports are welcome!
If you’d like to improve this package, please open an issue or pull request on GitHub.

## 📄 License
This project is licensed under the MIT License.