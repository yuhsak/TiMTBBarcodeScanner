/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2015年 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */
#import "TiUIView.h"
#import "MTBBarcodeScanner.h"

@interface ImYskTiMTBBarcodeScannerView : TiUIView {
    
}

@property (nonatomic, strong) MTBBarcodeScanner *scanner;
@property (nonatomic, strong) UIView *previewView;
@property (nonatomic, strong) NSMutableArray *uniqueCodes;

@end
