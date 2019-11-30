//
//  RCTImpactFeedbackManager.m
//  qichang
//
//  Created by Damoness on 2019/6/28.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import "RCTImpactFeedbackManager.h"

@implementation RCTImpactFeedbackManager

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

RCT_EXPORT_MODULE()

+ (BOOL)requiresMainQueueSetup{
  
  return YES;
  
}

-(dispatch_queue_t)methodQueue{
  
  return dispatch_get_main_queue();
  
}

RCT_EXPORT_METHOD(impactOccurred){
  
  if (@available(iOS 10.0, *)) {
    UIImpactFeedbackGenerator *feedBackGenertor = [[UIImpactFeedbackGenerator alloc] initWithStyle:UIImpactFeedbackStyleMedium];
    [feedBackGenertor impactOccurred];
  } else {
    // Fallback on earlier versions

  }
  
}



@end
