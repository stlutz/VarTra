# VarTra - Squeak Variable Tracking [![Build Status][travis_b]][travis_url] [![Coverage Status][coveralls_b]][coveralls_url]
VarTra offers a mechanism to synchronously react to variable assignments.

Supported variable types include:
  * instance variables
  * temporary variables
  * literal variables (class, global, shared pools).

## Installation
Please **proceed with caution**. This project changes the default compilation process and recompiles all methods within your image [after installation][initialization].

[Check Travis][travis_url] to see whether your version of Squeak is supported. Make sure to have the latest [Metacello] installed. Then you can use the following code to load VarTra and all its prerequisites:

```smalltalk
Metacello new
  baseline: 'VarTra';
  repository: 'github://stlutz/VarTra/src';
  load.
```

## How it Works
For VarTra to notice a variable change, the method assigning the variable has to have been instrumented before the method was invoked. Instrumented methods are generated using an [altered compilation][compiler] process to include change notification calls. Most notably,  all assignments are parsed as [VtTrackedAssignmentNode] instead of the normal AssignmentNode.

### Example Method
Let's consider the setter method `MyObject>>myInstVar:`
```smalltalk
myInstVar: anObject

  myInstVar := anObject
```

In default (V3PlusClosures) encoding, the method and its bytecode would look as follows:

![normal method]

When compiled by VarTra, the instrumented method looks differently. Before assigning the variable, it first checks a guard to see whether there even is a collection of subscriptions. If there isn't (which in this case would mean that the corresponding literal variable `VarTraSubs:MyObject:myInstVar` is nil), the assignment will proceed as usual -- without any additional overhead by notification callbacks. If there are subscriptions (even if they might be empty), the arbiter class [`VarTra`][VarTra] is notified and will dispatch notification messages to all subscribers.

![instrumented method]
<!-- References -->
[travis_b]: https://travis-ci.org/stlutz/VarTra.svg?branch=master
[travis_url]: https://travis-ci.org/stlutz/VarTra
[coveralls_b]: https://coveralls.io/repos/github/stlutz/VarTra/badge.svg?branch=master
[coveralls_url]: https://coveralls.io/github/stlutz/VarTra?branch=master

[Metacello]: https://github.com/Metacello/metacello

[instrumented method]: ./documentation/instrumentedMethod.jpg
[normal method]: ./documentation/normalMethod.jpg

[initialization]: ./src/VarTra-Core.package/VarTra.class/class/initialize.st
[compiler]: ./src/VarTra-Compiling.package/VtCompiler.class/README.md
[VtTrackedAssignmentNode]: ./src/VarTra-Compiling.package/VtTrackedAssignmentNode.class/README.md
[VarTra]: ./src/VarTra-Core.package/VarTra.class/README.md


## Issues
* If a class already has subscriptions, they will be lost during class building. This is not intentional. The "new" class has its methods compiled before it assumes the identity of the old class, making it non-trivial to migrate subscriptions.
* The changed compilation adds at least as many literals to the method, as there are different variables being assigned. For some methods, this puts them over the limit of literals being allowed withing a single method. This is, however, exceptionally rare.