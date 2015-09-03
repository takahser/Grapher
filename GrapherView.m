//
//  GrapherView.m
//  Grapher
//
//  Created by S Takahashi on 03.09.15.
//  Copyright (c) 2015 S Takahashi. All rights reserved.
//

#import "GrapherView.h"

@implementation GrapherView

const int pi = 3.1416;

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // Fill bg with yellow
    CGContextSetRGBFillColor(context, 1.0f, 1.0f, 0.0, 1.0f);
    CGContextFillRect(context, rect);
    
    // Obtain screen center point
    float cx = rect.size.width/2;
    float cy = rect.size.height/2;
    
    // Set line color to RED
    CGContextSetRGBStrokeColor(context, 1.0f, 0.0, 0.0, 1.0f);
    
    // Start drawing polyline
    CGContextBeginPath(context);
    
    n = 10;
    radius = 0.5f;
    
    for(int i=0; i<n; i++) {
        for (int j=i+1; j<n; j++) {
            float x = [self xForPoint:i];
            float y = [self yForPoint:i];
            CGContextMoveToPoint(context, cx+cx*x, cy+cx*y);
            x = [self xForPoint:j];
            y = [self yForPoint:j];
            CGContextAddLineToPoint(context, cx+cx*x, cy+cx*y);
        }
    }
    CGContextStrokePath(context);
}

- (float)xForPoint:(int)i {
    return radius*cos(i*2.0/n*pi);
}

- (float)yForPoint:(int)i {
    return radius*sin(i*2.0/n*pi);
}


@end
