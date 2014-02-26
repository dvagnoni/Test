//
//  test1aViewController.m
//  Test1a
//
//  Created by Daniel Vagnoni on 2/26/14.
//  Copyright (c) 2014 Daniel Vagnoni. All rights reserved.
//

#import "test1aViewController.h"

@interface test1aViewController ()

@end

@implementation test1aViewController

- (void)viewDidLoad
{
    //1. The difference between a strong reference and a weak reference is that a weak reference does not "own" an object as a strong reference does. This means that the object does not retain the reference.
    //2. To remove an object from the heap, one can either use the automatic memory management tag,
    //@autoreleasepool, or delete the object manually with a delete command (@autoreleasepool is a relatively recent development.
    //3. A retain cycle is a rare but significant issue where an object loses all of its references but remains in memory. As a result, it cannot be removed from memory at all, without a bug fix on the backend.
    //4. The heap is where objects and other related items are stored -- the heap exists in all programming languages and is likewise integral in Objective-C for the use of objects, etc. The heap can be overloaded, and such will cause a substantial error.
    //5. A Framework is a 'kit' of sorts that Apple (or another party) has provided within Objective-C, particularily in XCode. It provides a number of classes and messages that one would typically expect from a programming language. An analogy from Java would be a java.util package.
    //6. Show two ways of creating an NSArray of the letters A, B, and C.
    NSArray *abc = [NSArray alloc];
    NSString *a = [NSString alloc];
    NSString *b = [NSString alloc];
    NSString *c = [NSString alloc];
    a = @"a";
    b = @"b";
    c = @"c";
    [abc initWithObjects:a, b, c, nil];
    
    NSArray *abc2 = [NSArray alloc];
    
    [(abc2)arrayWithContentsOfFile:[(NSString *)@"pathtoafile"]];
    //7. Two ways to iterate over the NSArray
    char *x = nil;
    for (int i = 0; i < 3; i++) {
        [x = [(abc)objectAtIndex:i;]]
        NSLog(@"This is the %dth element"\n, i);
    }
    
    char *y = nil;
    int i = 0;
    while (i < 3) {
        [x = [(abc)objectAtIndex:i]];
        NSLog(@"This is the %dth element", i);
    }
    //8. Two ways of generating a dictionary.
    NSDictionary *dict = [NSDictionary alloc];
    NSArray *keys = [NSArray alloc];
    NSInteger one = 1;
    NSInteger two = 2;
    NSInteger three = 3;
    [(keys)initWithObjects:[(one), (two), (three), nil]];
    [(dict)initWithObjectsAndKeys:abc forKeys:keys nil];
    
    NSDictionary *dict2 = [NSDictionary alloc];
    [(dict2)initWithDictionary:dict copyItems:YES];
    
    //9. When a view needs to be redrawn, one can indicate the redrawwin message in order to refresh the view.
    //10. The root view controller contains methods that other view controllers do not. These are typically essential methods to an iOS application, such as viewdidload, viewdidunload, and so forth.
    //11. A designted initializer is a term used to describe a type of initializer. As a class may define more than one type of initializer, the designated initializer is typically the default -- it may initialize an empty array, for instance (and in that case would be the init, though with programmer created classes the name may differ. By convention however, init tends to be the most common).
    //12. The stack is a sequence in memory where function calls are located. The literal addresses can be found in assembly translations of highler level languages, but in C related languages the stack is especially important because, unlike in Java, C languages use pointers to memory, allowing indirect access to the stack.
    //13. A frame is a single memory location on the stack.
    //14. Dynamic binding is a technique where a programmer can determine at runtime what message or method to call on a class. It is a powerful technique that, to use an academic word, often meshes well with polymorphism (though one would usually only use this word in other languages).
    //15. It allows flexibility in programming -- without having to determine before runtime what method to call, one can dynamically make the best choice, leaving options open until the moment of runtime. Similar to late-binding, another CS buzzword.
    //16. A class method can be called without an instance of a class, while an instance method must be called on a specific instance of a class in order to function.
    //17. The line on the test fills cardA's contents with the contents of cardB and cardC, and determines wheather or not the contents of cardB and cardC match at any point.
    //18. You cannot make a CGFloat property strong because it is not an Objective-C object. It is carried over from C.
    //19. You should check for retain cycles using the debugger, or eliminate alloc statements and attempt to streamline your program so that objects do not use as much memory. However, if your program is not secure in terms of memory, it will take more than eliminating alloc statements; some redesign may be necessary.
    //20. Protocol is a way to give classes certain features, a form of inheritance. It can also allow two largely not-similar classes to work together to achieve a common goal with similar functions.
    //21. One may indicate in the header file weather or not a file conforms to protocol. For instance, @interface classname <protocol, possible other protocols>
    //22. A delegate does what it says on the tin -- delegates certain tasks to other aspects of an application.
    //23. Ideally, once, unless there is some type of error. On multiple view applications, it may call as it is needed.
    //24. An NSSet is not ordered, while an NSArray is.
    //25. Write the code to create a UIButton called "Hello World"
    - (IBAction)HelloWorld:(id)sender;
    //26. A dynamic table view has significantly more flexability than a static table view.
    //27. Freeby (given during the course of test).
    //28. Freeby (given during the course of test).
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)HelloWorld:(id)sender {
}
@end
