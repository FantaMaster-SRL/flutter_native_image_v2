# flutter_native_image_v2 SwiftPM compatibility fork

Based on flutter_native_image_v2 1.1.5+1. The original license is retained in LICENSE.
Dart and Android sources are unchanged from this upstream version.
iOS sources are moved into the SwiftPM layout and the podspec paths updated.


The Swift package uses FlutterFramework provided by Flutter 3.41 or newer.

The UIImage category headers explicitly import UIKit; CocoaPods previously
provided this through its prefix header. This makes them self-contained for
SwiftPM Clang module compilation.

This integration is maintained in the FantaMaster Git repository; the app can
consume a tagged Git dependency without vendoring this package locally.
