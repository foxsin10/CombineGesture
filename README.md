# CombineGesture

some `RxGesture` like api for **combine**, using `target action pattern`

## Usage

### tapGesture

when an `UITapGestureRecognizer` tapped:

```swift
view.tap()
    .when(.recognized)
    .sink { _ in 

    }
    .store(in: &set)
```

tap point:

```swift
view.tap()
    .when(.recognized)
    .location()
    .sink { point in

    }
    .store(in: &set)
```

### panGesture

when an `UIPanGestureRecognizer` triggered:

```swift
view.panGesture()
    .when(.began, .changed, .ended)
    .velocityAndlocation()
    .sink { (point, velocity) in 
    
    }
    .store(in: &set)
```
