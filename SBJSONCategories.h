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

#import <Foundation/Foundation.h>


@interface NSObject (SBJSONCategories)
- (NSString *)prettyJSON;
- (NSString *)JSONRepresentation;
@end

@interface NSString (SBJSONCategories)
- (id)JSONValue;
@end


