# haxe-file-save
Simple String / Bytes saving in Haxe with minimal dependency supporting JS / Flash / OpenFL.

Example
```haxe
// Save a String
FileSave.saveString("Just a \nTEST!!!", "test.txt");

// If you want to add a "click to save", HTML5 / Flash require user interaction
FileSave.saveClickString("Just a \nTEST!!!", "test.txt");
```