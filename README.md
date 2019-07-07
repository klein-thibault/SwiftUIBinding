# SwiftUIBinding
Demonstration project showing how to use Swift Binding to update a child model from the parent list using Combine and SwiftUI

## Requirements

* Xcode 11 beta
* Swift 5.1 beta
* iOS 13 beta

## SwiftUI

Demonstrating the use of `Binding` to reference an object from a parent view in a child view. 

The use of `Binding` allows the child to update the model and propagate the update to the parent thanks to the reference to the model. The view referencing the `Binding` property doesn’t have a copy of the object, but a direct reference.

## External Links

* [Apple’s Binding documentation](https://developer.apple.com/documentation/swiftui/binding)

