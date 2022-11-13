# SIMPLE SNACK BAR FOR FLUTTER

Show beautiful Snack bar and display messages for:
1. Success
2. Error
3. Warning
4. Info

## DEMO

![The example app running in Android](https://user-images.githubusercontent.com/38047216/201537977-e8641d2d-7c68-41dd-acf8-0570707b1cf6.gif)

## USAGE

```dart
//define
final snackBar = simpleSnackBar(
                      //required
                      buildContext: context,
                      //required
                      messageText: "This is an info",
                      backgroundColor: Colors.white,
                      displayDismiss: false,
                      textColor: Colors.black,
                      snackBarType: SnackBarType.info);
//display
ScaffoldMessenger.of(context).showSnackBar(snackBar);
```