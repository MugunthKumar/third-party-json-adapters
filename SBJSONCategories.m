//
//  SBJSONCategories.h
//  NSJSONTest
//
//  Created by Mugunth Kumar on 17/06/11.
//  Copyright 2011 Steinlogic. All rights reserved.
//

//  As a side note on using this code, you might consider giving some credit to me by
//	1) linking my website from your app's website 
//	2) or crediting me inside the app's credits page 
//	3) or a tweet mentioning @mugunthkumar
//	4) A paypal donation to mugunth.kumar@gmail.com
//
//  A note on redistribution
//	if you are re-publishing after editing, please retain the above copyright notices

#import "SBJSONCategories.h"


@implementation NSObject (SBJSONCategories)

-(NSString*) jsonWithOption:(int) option
{
  NSError *err = nil;
  
  NSData *data = [NSJSONSerialization dataWithJSONObject:self 
                                                 options:option 
                                                   error:&err];
  
  if(err)
    NSLog(@"%@", [err description]);
  
  return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];

}

- (NSString *)prettyJSON {

  return [self jsonWithOption:NSJSONWritingPrettyPrinted];
}

- (NSString *)JSONRepresentation {
  
 return [self jsonWithOption:0];
}

@end


@implementation NSString (SBJSONCategories)

- (id)JSONValue {

  NSError *err = nil;
  NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];  
  id jsonValue = [NSJSONSerialization JSONObjectWithData:data 
                                                 options:NSJSONReadingMutableContainers|NSJSONReadingMutableLeaves 
                                                   error:&err];
  
  if(err)
    NSLog(@"%@", [err description]);
  
  return jsonValue;
}

@end

@implementation NSData (SBJSONCategories)
- (id)JSONValue 
{
    NSError *err = nil;
    id jsonValue = [NSJSONSerialization JSONObjectWithData:self 
                                                   options:0 
                                                     error:&err];
    
    if(err)
        NSLog(@"%@", [err description]);
    
    return jsonValue;
}

@end
