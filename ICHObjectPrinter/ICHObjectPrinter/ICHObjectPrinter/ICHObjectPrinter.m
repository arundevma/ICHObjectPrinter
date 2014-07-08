//
//  ICHObjectPrinter.m
//  SkeletonWebServiceProjectNOCD
//
//  Created by Arun Dev M A on 7/5/14.
//  Copyright (c) 2014 iChathan.com. All rights reserved.
//

#import "ICHObjectPrinter.h"
#import <objc/message.h>


@implementation ICHObjectPrinter

+(NSString *)descriptionForObject:(id)objct
{
    unsigned int varCount;
    NSMutableString *descriptionString = [[NSMutableString alloc]init];
    
    
    objc_property_t *vars = class_copyPropertyList(object_getClass(objct), &varCount);
    
    for (int i = 0; i < varCount; i++)
    {
        objc_property_t var = vars[i];
        
        const char* name = property_getName (var);
        
        NSString *keyValueString = [NSString stringWithFormat:@"\n%@ = %@",[NSString stringWithUTF8String:name],[objct valueForKey:[NSString stringWithUTF8String:name]]];
        [descriptionString appendString:keyValueString];
    }
    
    free(vars);
    return descriptionString;
}

@end
