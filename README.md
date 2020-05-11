# Learning SwiftUI

This repo includes XCode Playground files compatible both with the iPad Swift Playgrounds app and Xcode for different online tutorials around SwiftUI, including the [Design+Code SwiftUI](https://designcode.io/swiftui-course) courses.

---

This repo consists of 2 bootstrap playground files and 2 folders where I follow and solve online tutorials.

Bootstrap playgrounds are starting points and you can use to get things started.

0. `Hello.playground` provides you with a quick hello world so you can see how to render SwiftUI inside Playgrounds, how to use dynamic colours and embed images. Foundations to do magic.
1. `Bootstrap.playground` provides you with a component-base structure to develop using SwiftUI. It builds on top of the `Hello.playground` and sprinkles a little of reusable fairy magic.

Tutorial folders include:

1. Apple Tutorials: where I follow and solve Apple's SwiftUI tutorials.
2. Desing+Code: where I follow Meng's [Design+Code SwiftUI](https://designcode.io/swiftui-course) courses.

My aim is for this to document my slow learning of SwiftUI but also for it to help others, who like me, like the challenge of learning and are (forcing themselves) to develope from an iPad ;)

## Images & Colours

Wherever possible I provide `.png` versions of assets, as I haven't been able to make Playgrounds to play nice with PDF assets just yet. `@3x` is the resolution used by iPads so I went with it to make things look good, but it also means you have to explicitly define the resolution of the original file whenever used, otherwise you will end up with an image 3x the intended size. An example of this is

```Swift
Image(uiImage:#imageLiteral(resourceName: "background.png"))
    .resizable()
    .frame(width: 40, height: 40)
```

the `#imageLiteral(resourceName: "background.png")` is how you embed named images in playgrounds.

Bootstrap files also include examples to use complex colours and simple colours you can use throughout your playgrounds. Be sure to check the `Colors.swift` file in the `Shared Sources`.

## Components

When extracting SwiftUI elements to their own files, Playgrounds requires making the `struct` and the `body` member of the component `public`, you are also required to add a `public init` method even when no personalised initiation is required; this is because [Playgrounds will compile the source files as a module](https://help.apple.com/xcode/mac/8.0/#/devfa5bea3af) to be consumed by the Playground page, this compilation happens ahead of the interactive execution to keep things snappy.

```Swift
public struct HelloComponent : View {
    public init () {}
    public var body : some View {
        Text("Hello world")
    }
}
```

---

**PS:** while I am sharing exports of the assets from the tutorials or lessons I can't claim copyrights of them and only do so under Fair Use so you and me can follow along, if anyone has any problems with that, please send a pull request removing the assets and I will be happy to accept it.

---

This and more is made with love from Newcastle upon Tyne or wherever in the world I happen to check in code from.

Pura vida.
