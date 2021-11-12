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
