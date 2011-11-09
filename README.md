#Categories

A set of additions to Cocoa and Cocoa Touch I frequently use.

## Functional Collections

Map, reduce and filter in Objective C as categories over NSArray. Uses blocks for filtering, collecting and reducing. Inspired by Smalltalk.

Contains the following methods:

	-(NSArray *) arrayByFilteringWithBlock: (filterBlock) block;
	-(NSArray *) arrayByCollectingWithBlock: (collectorBlock) block;
	-(id) valueByReducingWithBlock: (reducerBlock) block startingWith: (id) start;
	
## NSArray+Random

Picks an object at random in NSArray. Inspired by Python's choice().

## UIColor+X11Colors

Dear fellow dinosaur,

So you are used to [X11 named colors](http://en.wikipedia.org/wiki/X11_color_names) and would like to keep using them in iOS? Just include this category and
you'll be up and running in no time.

## NSObject+FRRObject

Several additions to NSObject.

###performBlock:afterDelay: 

Similar to performSelector:afterDelay: but adding the flexibility of blocks.

###performBlock:ifRespondsTo:

Will only perform a block if the receiver responds to a certain selector. Useful [before sending @optional messages
to an object that might not implement them](http://www.cocoaosx.com/2011/10/24/how-to-safely-send-optional-protocol-messages-that-might-not-be-implemented/).  