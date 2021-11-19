#  Swiftful thinking bootcamp

This is the default app.

Following [this tutorial](https://www.youtube.com/watch?v=N-ntKJdVNBs&list=PLwvDm4VfkdphqETTBf-DdjCoAvhai1QpO&index=2).

Tips:
* Use CMD+OPT+P to resume canvas
* Use CMD+OPT+ENTER to toggle canvas preview


## 01. Using XCode

We can create an app using XCode. There are lots of types of projects we can make.

There is a preview emulator built into the IDE (created when preview component is used). You can highlight components in the code and in preview and they will show a highlight effect.

If you don't know the options for the component, there are plus and sidebar buttons on the top-right which can be used to see what components are available, or view parameters/options for the component.

There if you click on the play button, it will launch the iOS emulator.

If you double-click on the app object in the left sidebar to change app properties.

## 02. Text Component

You can create text components like this:
```swift
Text("Hello, world! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning a lot.")
    .font(.body)
    .bold()
    .underline()
    .italic()
    .baselineOffset(20.0) // Distance between letter and base line
    .kerning(1) // Letter spacing
    .foregroundColor(.blue) // Text color
    .frame(width: 200, height: 200, alignment: .center) // Text box dimensions with overflow elipses (...)
    .minimumScaleFactor(0.5) // Allows text to shink size to fit in frame - minimum size

```

We can also use system for text properties. This method is great for customizing and distributing specific font properties, however, it will cause font to be fixed and not respect user settings.
```swift
Text("asasddas")
    .font(.system(size: 24, weight: .semibold, design: .monospaced))
```

You can also use string utils:
```swift
"HeLo, WoRlD!".capitalized
"HeLo, WoRlD!".uppercase()
"HeLo, WoRlD!".lowercase()
```

## 03. Shapes

Purple 80% circle outline (like a circular progress indicator).
```swift
Circle()
    .trim(from: 0.2, to: 1.0)
    .stroke(Color.purple, lineWidth: 50)
```

80% of an oval outline made from orange dashes.
```swift
Ellipse()
    .trim(from: 0.2, to: 1.0)
    .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50]))
    .frame(width: 200, height: 100)
```

Red softly-rounded capsule.
```swift
Capsule(style: .continuous)
    .fill(Color.red)
    .frame(width: 200, height: 100)
```

Red rectangle.
```swift
Rectangle()
    .fill(Color.red)
    .frame(width: 200, height: 100)
```

Red rounded rectangle with a slice cut out of it. Very useful for cards/panels.
```swift
RoundedRectangle(cornerRadius: 20)
    .trim(from: 0.4, to: 1.0)
    .fill(Color.red)
    .foregroundColor(Color.blue)
    .frame(width: 200, height: 100)
```

## 04. Colors

Getting colors:
```swift
// Basic Colors
Color(.red)
Colors.red
Color(#colorLiteral(red: 0, green: 0.3, blue: 0.6, alpha: 1))

// Primary/Secondary Colors
Color.primary
Color.secondary

// UIKit & System Colors
Color(UIColor.brown)
Color(UIColor.secondarySystemBackground)

// Custom Colors
Color("CustomColor")
```

If you change the device color scheme, the system/primary colors will adapt.
(click on the slider settings button in the preview emulator)

We can create custom colors by clicking on Assets and creating a new color set.
On the colors we can specify a light/dark mode colors and open the sidebar
(top right) to change the color values.

```swift
RoundedRectangle(cornerRadius: 20)
    .fill(Color("CustomColor"))
    .frame(width: 200, height: 150)
    .shadow(color: .black, radius: 10, x: 10, y: 10)
```

## 05. Gradients

Gradients are a good way to make cards look fancy.

They can also be used to create backgrounds that look nice without needing a giant PNG image.

```swift
RoundedRectangle(cornerRadius: 25)
    .fill(
        LinearGradient(
            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), Color.blue]),
            startPoint: .topLeading, endPoint: .bottom)
    )
    .frame(width: 300, height: 200)
```
```swift
RoundedRectangle(cornerRadius: 25)
    .fill(
        RadialGradient(
            gradient: Gradient(colors: [Color.red, Color.blue]),
            center: .center,
            startRadius: 5,
            endRadius: 200
        )
    )
    .frame(width: 300, height: 200)
```
```swift
RoundedRectangle(cornerRadius: 25)
    .fill(
        RadialGradient(
            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]),
            center: .topLeading,
            startRadius: 5,
            endRadius: 400
        )
    )
    .frame(width: 300, height: 200)
```
```swift
RoundedRectangle(cornerRadius: 25)
    .fill(
        AngularGradient(
            gradient:  Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))]),
            center: .topLeading,
            angle: .degrees(180 + 45))
    )
    .frame(width: 300, height: 200)
```
