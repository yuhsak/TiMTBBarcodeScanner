/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2015年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ImYskTiMTBBarcodeScannerView.h"

@implementation ImYskTiMTBBarcodeScannerView

-(void)layoutSubviews
{
    
    [super layoutSubviews];
    
    if(!self.previewView){
        
        self.previewView = [[UIView alloc] initWithFrame:self.frame];
        self.scanner = [[MTBBarcodeScanner alloc] initWithPreviewView:self.previewView];
        self.uniqueCodes = [[NSMutableArray alloc] init];
        
        [self.scanner startScanningWithResultBlock:^(NSArray *codes) {
            for (AVMetadataMachineReadableCodeObject *code in codes) {
                if (code.stringValue && [self.uniqueCodes indexOfObject:code.stringValue] == NSNotFound) {
                    [self.uniqueCodes addObject:code.stringValue];
                    
                    NSLog(@"Found unique code: %@", code.stringValue);
                    
                    NSDictionary *e = [NSDictionary dictionaryWithObjectsAndKeys:code.stringValue, @"value", nil];
                    [self.proxy fireEvent:@"detect" withObject:e];
                    
                }
            }
        }];
        
        [self addSubview:self.previewView];
        
    }
    
};


@end
