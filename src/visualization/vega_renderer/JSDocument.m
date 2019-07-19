/* Copyright © 2019 Apple Inc. All rights reserved.
 *
 * Use of this source code is governed by a BSD-3-clause license that can
 * be found in the LICENSE.txt file or at https://opensource.org/licenses/BSD-3-Clause
 */
#import "JSDocument.h"

@implementation VegaJSDocument;
- (instancetype)initWithCanvas:(VegaCGCanvas*)canvas {
    self = [super init]
    _canvas = canvas;
    return self;
}

- (NSObject<VegaHTMLElement>*)createElementWithString:(NSString*)element {
    if([element isEqualToString:@"canvas"]){
        return _canvas;
    } else {
        NSLog(@"warning: creating elements of type '%@' is not supported", element);
    }
    return nil;
}
@end
