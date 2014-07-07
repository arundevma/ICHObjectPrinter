ICHObjectPrinter
================
When debugging an IOS application, the most frustrating situation we face is printing a custom object to console. We have to implement - (void)description method in order to print a custom object properly. If this method is not implemented in .m file only the memory address of object will be printed to console. Implementing this in each and every custom class is a time consuming process.


This class uses Objective C runtime to access properties of an object at runtime and return them as a string. All you need is to call descriptionForObject method.


Usage
==========

To use this class:

Copy ICHObjectPrinter.h and .m files and import in your code.

Then use     
NSLog(@"Object description is %@",[ICHObjectPrinter descriptionForObject:person]); in code
<b>or</b>
PO [ICHObjectPrinter descriptionForObject:person] in console


See the sample code in the project.
