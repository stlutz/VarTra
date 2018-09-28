In the following the performance of setters was investigated. The setter in question looked as follows:
```smalltalk
instVar1: anObject

	instVar1 := anObject
```
Depending on multiple circumstances, the time to run this setter was more or less decreased - but in any case a method recompiled using VarTra WILL have its performance decreased. It is however notable, that due to the guarding mechanism for variables who do not have any subscribers, it was possible to minimize the impact this might have on the system dramatically.

## Normal Squeak
```smalltalk
| counter obj1 |
counter := 0.
obj1 := VtExperiments new.
[obj1 instVar1: (counter := counter + 1)] bench.
```
134,000,000 per second. **7.48 nanoseconds per run**.

## Recompiled, guarded (without subscriber)
```smalltalk
| counter obj1 |
(VarTra subscriptionsBindingForInstVarNamed: #instVar1 ofClass: VtExperiments) value: nil.
counter := 0.
obj1 := VtExperiments new.
[obj1 instVar1: (counter := counter + 1)] bench.
```
101,000,000 per second. **9.95 nanoseconds per run**.

## Recompiled, with subscriber, reassignment (unchanged value identity)
```smalltalk
| counter obj1 obj2 |
counter := nil.
obj1 := VtExperiments new.
obj2 := Object new.
VarTra subscribe: obj2 toInstVarNamed: 'instVar1' of: obj1.
[obj1 instVar1: (counter := counter)] bench.
```
26,900,000 per second. **37.2 nanoseconds per run**.

## Recompiled, with subscriber
```smalltalk
| counter obj1 obj2 |
counter := 0.
obj1 := VtExperiments new.
obj2 := Object new.
VarTra subscribe: obj2 toInstVarNamed: 'instVar1' of: obj1.
[obj1 instVar1: (counter := counter + 1)] bench.
```
5,890,000 per second. **170 nanoseconds per run**.
