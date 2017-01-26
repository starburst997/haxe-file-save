package;

import file.load.FileLoad;
import file.save.FileSave;

import statistics.TraceTimer;
import statistics.Stats;

// Tests
enum Tests
{
  SaveBytes_1;
  SaveString_1;
}

/**
 * Class used to Test / Compile haxe-file-save library
 */
class TestSave
{
  // List of files
  public static inline var PATH:String = "./assets/notes/";
  public static inline var TEST1:String = PATH + "test1.note";

  // Stats
  var stats = new Stats();

  // Run some tests
  public function new()
  {
    trace("Test Save Launch!");

    TraceTimer.activate();

    var test = SaveBytes_1;

    switch (test)
    {
      case SaveString_1: saveString();
      case SaveBytes_1: saveBytes(TEST1);
    }
  }

  // Save a String
  function saveString()
  {
    trace("Save a String");
    
    FileSave.saveClickString("Just a \nTEST!!!", "test.txt");
  }

  // Bytes Loaders Test
  function saveBytes( url:String )
  {
    trace("Save a Bytes");
    
    FileLoad.loadBytes(
    {
      url: url,
      complete: function(bytes)
      {
        trace("Downloading complete");

        FileSave.saveClickBytes(bytes, "test.bin");
      },
      error: function(error)
      {
        trace("Error", error);
      }
    });
  }
}