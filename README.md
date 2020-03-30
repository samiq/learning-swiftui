# design+code

XCode Playground files compatible both with the iPad Swift Playgrounds app and Xcode for the [Design+Code SwiftUI](https://designcode.io/swiftui-course) courses.

---

This repo consists of 3 playground files:

0. `Hello.playground` provides you with a quick hello world so you can see how to render SwiftUI inside Playgrounds, how to use dinamyc colors and embed images. Foundations to do magic.
1. `Start.playground` gives you a starting point to follow the lessons yourself. Inside, you will find 2 pages, one, a quick `hello world` you can use to see how to make SwiftUI render inside Swift playgrounds; in the second page, you will find the solution to lesson 2, **[Stack and Layouts](https://designcode.io/swiftui-layout-and-stacks)**, so you can reference basic things to use as you advance in the other lessons.
1. The `Lessons.playground` is the one I am using to solve the lessons myself and which you can use as reference (as advance thru the course).

My aim is to have one page per lesson; now, not having gone thru all the lessons yet but know how limited Playgrounds are, I can imagine I won't be able to do everything vs an Xcode Project like Meng does in the course, but I wanted to push myself to see how much I could get done using just an iPad - think of it as my Corona challenge ;)

---

**Note:** Included in these playgrounds you will find `@3x` versions of the assests provided in the course's download assets, I was not able to make Playgrounds to play nice with PDF assets so I had to convert those to transparent pngs. `@3x` is the resolution used by iPads so I went with it but because of it, it means you have define the resolution of the original file when used, otherwise you will end up with an image 3x the intended size. An example of this is

```Swift
Image(uiImage:#imageLiteral(resourceName: "background.png"))
    .resizable()
    .frame(width: 40, height: 40)
```

the `#imageLiteral(resourceName: "background.png")` is how you embed named images in playgrounds.

---

**PS:** while I am sharing exports of the assets [Meng](https://twitter.com/MengTo) and [team](https://twitter.com/designcodeio) created for the course inside these playgrounds, please bare in mind all copyrights are theirs. I am doing so under Fair Use so you can follow along, if anyone has any problems with that, please reach out.

---

Made with love from Newcastle upon Tyne :)

Pura vida.
