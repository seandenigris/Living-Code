as yet unclassified
convertSubclassesOf: class withPrefix: prefix andSuffix: suffix toContructorsIn: protocol
	"For objects representing defined sets, like statuses or types, I have two basic patterns: 1) subclass for each, and 2) class-side constructors on what would be the super class. I used to use #1 a lot, but lately it feels too heavyweight when there is no per instance behavior, especially when combined with Magritte where that behavior often ends up in MAVisitors. This message converts a #1 implmentation to #2"

class subclassesDo: [ :sclass |
	| realName code |
	realName := (sclass name allButFirst: prefix size) allButLast: suffix size.
	code := sclass code.
	class class compile: realName uncapitalized, '

	^ self new
			description: ''', realName, ''';
			code: ', code asString, ';
			yourself' classified: protocol. ]