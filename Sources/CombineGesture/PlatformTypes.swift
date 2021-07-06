import Foundation

#if os(iOS)
import UIKit
public typealias Touch = UITouch
public typealias GestureRecognizer = UIGestureRecognizer
public typealias GestureRecognizerState = UIGestureRecognizer.State
public typealias GestureRecognizerDelegate = UIGestureRecognizerDelegate
public typealias PlatFormView = UIView
public typealias Point = CGPoint
#elseif os(OSX)
import AppKit
public typealias Touch = NSTouch
public typealias GestureRecognizer = NSGestureRecognizer
public typealias GestureRecognizerState = NSGestureRecognizer.State
public typealias GestureRecognizerDelegate = NSGestureRecognizerDelegate
public typealias PlatFormView = NSView
public typealias Point = NSPoint
#endif

public enum TargetView {
    /// gestureRecognizer's view
    case view

    /// gestureRecognizer's view's superview
    case superview

    /// gestureRecognizer's view's window
    case window

    /// The view, on which the gesture will be added 
    case target(PlatFormView)

    public func targetView(for gestureRecognizer: GestureRecognizer) -> PlatFormView? {
        switch self {
        case .view: return gestureRecognizer.view
        case .superview: return gestureRecognizer.view?.superview

        case .window:
            #if os(iOS)
            return gestureRecognizer.view?.window
            #elseif os(OSX)
            return gestureRecognizer.view?.window?.contentView
            #endif

        case let .target(view):
            return view
        }
    }
}

extension GestureRecognizerState: CustomStringConvertible {
    public var description: String {
        return String(describing: type(of: self)) + {
            switch self {
            case .possible: return ".possible"
            case .began: return ".began"
            case .changed: return ".changed"
            case .ended: return ".ended"
            case .cancelled: return ".cancelled"
            case .failed: return ".failed"
            @unknown default: return ".failed"
            }
        }()
    }
}
