# **Observable, Observed, State and Binding**

In this reading, you will be introduced to the SwiftUI elements: **ObservableObject** , **ObservedObject** , **State** and **Binding**. These are elements that work together to create variables that communicate through classes and views.

**What are these elements? **

**ObservableObject** , **ObservedObject** , **State** and **Binding** are known as property wrappers and are used with interface elements to control data display.

Let's start with **State** and **Binding**.

**How to use State and Binding**

**State** and **Binding** work in pairs, inside SwiftUI views, in the form **@State** and **@Binding**.

All SwiftUI views are structures, also known as structs. Once initialized, structs don't allow their internal variables to change. **@State** elements remove this restriction, allowing variables to be stored outside the structure itself in an area that can be changed. As a plus, they serve as control variables.

**@Binding** , on the other hand, is used to create variables that receive values from **@State** variables and are connected to them in a way that any change to a **@Binding** variable will change the bind **@State** variable.

**What do they look like in practice? **

**@State** and **@Binding** are used when you need to pass a variable to another view.

Suppose you have a view called **ContentView** and another one called **LittleLemonLogo** containing the logo of Little Lemon restaurant. You want to create some functionality in **ContentView** that controls the logo's visibility.

**ContentView** will look like this:

```swift
struct ContentView: View {
    @State var showLogo = true
    var body: some View {
        VStack {
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
        }
    }
}
```

A Boolean variable named **showLogo** is created on **line 2** , as a controlling variable of type **@State**.

**showLogo** on **line 5** controls the logo visibility and is passed to the **LittleLemonLogo** view as a controlling variable on **line 6**. Note the dollar sign preceding the variable name **$showLogo**.

The **LittleLemonLogo** view will be configured as follows:

```swift
struct ContentView: View {
    @State var showLogo = true
    var body: some View {
        VStack {
            if showLogo {
                LittleLemonLogo(bindingVariable: $showLogo)
            }
        }
    }
}
```

A Boolean variable named **bindingVariable** of type **@Binding** is created on **line 1**. This variable will receive the state of **ContentView**'s **showLogo** variable and will be tied to it, meaning, that any change to **bindingVariable** will change **showLogo**.

The logo image is added on **line 5**.

The button toggles the state of **bindingVariable** on **line 7**.

Once the button is tapped, the logo will disappear.

**Let's talk about ObservableObject and ObservedObject**

**@State** and **@Binding** work on SwiftUI views, which are purely structs, but what happens if you want to have a controlling variable in a class?

**@ObservableObject** to the rescue!

Let's use the same earlier example of the Little Lemon logo's visibility control.

To make a controlling variable inside a class you need to create it like this:

```swift
class MyClass:ObservableObject { 
    @Published var showLogo = true
}
```

Next, **ContentView** must be constructed like this:

```swift
struct ContentView: View {
    @ObservedObject var myClass = MyClass()
    var body: some View {
        VStack {
            if myClass.showLogo {
                LittleLemonLogo(myClass: myClass)
            }
        }
    }
}
```

**Line 1** creates an instance of **MyClass** named **myClass** and marks it as an observed object. **myClass** controls the logo visibility on **line 2** and is passed to the **LittleLemonLogo** view on **line 6**.

The **LittleLemonLogo** view can be constructed like this:
```swift
struct LittleLemonLogo: View {
    var myClass:MyClass
    var body: some View {
        VStack {
            Image("littleLemonLogo") 
            Button(action: {
                myClass.showLogo.toggle()
            }, label: {
                Text("Toggle Logo Visibility OFF")
                    .font(.title2)
            })
        }
    }
} 
```

The line on **line 2** creates a variable named **myClass** to store the instance of **MyClass** received from **ContentView**.

The button toggles the state of the variable **showLogo** inside **myClass** on **line 7**.

**Conclusion**

You have learned that **@ObservableObject** , **@ObservedObject** , **@State** and **@Binding** are elements that work together to create variables that communicate through classes and views to help keep user interfaces updated at all times.