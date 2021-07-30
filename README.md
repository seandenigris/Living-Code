LivingCode
==========

How do we make the IDE more like real life - live, direct, and fun!

Installation
------------------

[GToolkit](https://gtoolkit.com) is the reference platform, but the goal is for it to also work in the latest Pharo release

```smalltalk
[
	EpMonitor current disable.
	[ Metacello new
		baseline: 'LivingCode';
		repository: 'github://seandenigris/Living-Code/repository';
		"onConflict: [ :ex | ex allow ];"
		load ] ensure: [ EpMonitor current enable ].
] fork.
```
		
Quick Start Tutorial
------------------

#### Opening a New World
From the World Menu, click "Open Self World"
Things to note:
- The world is infinite (see below for how to scroll)
- Currently, due to Morphic limitations, zooming is not available; but this is very much desired!

#### Populating the World
1. In the Self window, in the editor bar near the top, type an expression
2. Accept with either Cmd+s or [Enter]
An object, very much like an Outliner in the Self Language, will appear in your hand. Place it in the world wherever you want

#### Scrolling in the World
Just use the mouse wheel, or click and drag anywhere on the World's background

#### Navigating a Complex World
Since grokking a complex world can be difficult, there is a RadarMorph, inspired by Self's RadarView.
Try the following:

1. Accept in the window's evaluating editor: ``RadarMorph new extent: (300.0@200.0); openInHand``
2. Place the RadarMorph in one of the corners of the world
3. You now have a warp speed option for scrolling - click and drag in the RadarMorph. Compare the regular scrolling described above and you'll see that it is at a much finer level

Feature Map
------------------

#### Creating new types
In self, the equivalent of creating a new instance is to copy a prototype e.g. "morph copy" ~ "Morph new". One key difference is that in most of the examples, you continue to customize the behavior, which is not a built-in way to deal with Smalltalk instances. So, we start with an equivalent of "Morph subclass: #MyMorphSubclass". In the future, we may make a real prototyping facility, but this will get the ball rolling.

#### Classifying globals
In self, one would add a slot to globals under an appropriate category and then connect the slot to the new prototype. As a Smalltalk equivalent, we include a "package" slot in all outliners. So one can drag and drop the package slot handle onto an RPackage.
