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
VarTra subscribe: obj2 toInstVarNamed: 'instVar1' ofObject: obj1.
[obj1 instVar1: (counter := counter)] bench.
```
26,900,000 per second. **37.2 nanoseconds per run**.

## Recompiled, with subscriber
```smalltalk
| counter obj1 obj2 |
counter := 0.
obj1 := VtExperiments new.
obj2 := Object new.
VarTra subscribe: obj2 toInstVarNamed: 'instVar1' ofObject: obj1.
[obj1 instVar1: (counter := counter + 1)] bench.
```
5,890,000 per second. **170 nanoseconds per run**.
