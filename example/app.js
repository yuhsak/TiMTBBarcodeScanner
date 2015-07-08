var win = Ti.UI.createWindow({
	backgroundColor:'#fff'
});

var TiMTBBarcodeScanner = require('im.ysk.TiMTBBarcodeScanner');

var scanner = TiMTBBarcodeScanner.createView();
scanner.addEventListener('detect', function(e){
	console.log(e.value);
});

win.add(scanner);

win.open();
