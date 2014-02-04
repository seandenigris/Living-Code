LivingCode
==========

How do we make the IDE more like real life - live, direct, and fun!

Self Mode - emulates Self IDE
=========

Feature Map:
Creating new types: In self, the equivalent of creating a new instance is to copy a prototype e.g. "morph copy" ~ "Morph new". One key difference is that in most of the examples, you continue to customize the behavior, which is not a built-in way to deal with Smalltalk instances. So, we start with an equivalent of "Morph subclass: #MyMorphSubclass". In the future, we may make a real prototyping facility, but this will get the ball rolling.
Classifying globals: In self, one would add a slot to globals under an appropriate category and then connect the slot to the new prototype. As a Smalltalk equivalent, we include a "package" slot in all outliners. So one can drag and drop the package slot handle onto an RPackage.
