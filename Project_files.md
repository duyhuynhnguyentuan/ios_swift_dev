# **Project files**

> **Learning objectives: Identify useful files and dictionaries you can access with Project View**

To access the entire file structure of a project including all files hidden within folders from the Xcode view, select Project from the tab at the top of the Project window.

Choosing Project view allows you to see a lot more files and directories. The most important of these are:

# module-name/

## AppDelegate

The app delegate is effectively the root object of your app, and it works in collaboration with UIApplication to manage some user interactions with the system.

## SceneDelegate

What is displayed on the screen is the responsibily of SceneDelegate

## ViewController

The view controller is the the parent of all views present on a storyboard. Each application has at least one ViewController. It faciltates the transition between various parts of the user interface.

## Main

With the Main.storyboard file you can lay out and design the user interface of your application by adding views such as buttons, table views, and text views onto the editor.

## Assets

This can be used to organize your app's images, icons, colors, and more.

## LaunchScreen

Launch Screens appear when when your app starts up and give user the impression that your app is fast and responsive

## Info.plist

Xcode supplies an information property list file when you create a project from a template, as described in "create a project." By default, Xcode names this file Info.plist and adds it to your project as a source file that you can edit.

# module-nameTests/

This folder is responsible for managing code required to test functions within the application.

# module-nameUITests/

This folder keeps the test files required for testing user interactions with app user interface.