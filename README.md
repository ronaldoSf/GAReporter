# GAReporter

[Tutuorial of how I created GAReporter](https://medium.com/@ji3g4kami/google-analytics-swift-framework-af843b5e7c0d)

## Set Up

``pod 'GAReporter', :git => 'https://github.com/ji3g4kami/GAReporter.git'``

```swift
import GAReporter

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GAReporter.configure("UA-ZZZZZZZZZZ", verbose: true)
        return true
    }
}
```

## Events

You can track any event you wish to using the ``sendEvent()`` method on the ``GAReporter``. Example:

```swift
func pruchaseBasketball() {
    GAReporter.sendEvent(category: "Sports", action: "Purchase", label: "basketball", value: nil)
}
```

## Screenviews

In many cases you'll want to track what "screens" that the user navigates to. A natural place to do that is in your ``ViewController``s ``viewDidAppear``.

```swift
import GAReporter

class ViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(false)
        GAReporter.sendScreenView("ViewController")
    }
}
```


## License

Copyright 2018 David Wu