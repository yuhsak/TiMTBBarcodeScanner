# TiMTBBarcodeScanner
-
This is a small fork of [MTBBarcodeScanner](https://github.com/mikebuss/MTBBarcodeScanner) for Titanium Mobile module.

## USage

To use this module, just require the module and create view from the module.

Scanning will then automaticaly start, and fires 'detect' event when the module detects any valid QRCode.

```
var win = Ti.UI.createWindow({
	backgroundColor:'#fff'
});

var TiMTBBarcodeScanner = require('im.ysk.TiMTBBarcodeScanner');

var scanner = TiMTBBarcodeScanner.createView();
scanner.addEventListener('detect', function(e){
	alert(e.value);
});

win.add(scanner);

win.open();

```
