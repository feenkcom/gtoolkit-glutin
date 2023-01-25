# GToolkit-Glutin

GToolkit bindings to [Glutin](https://github.com/rust-windowing/glutin) and [Winit](https://github.com/rust-windowing/winit).

## Installation

```smalltalk 
EpMonitor current disable.
[ 
  Metacello new
    baseline: 'Glutin';
    repository: 'github://feenkcom/gtoolkit-glutin:main/src';
    load
] ensure: [ EpMonitor current enable ].  
```
