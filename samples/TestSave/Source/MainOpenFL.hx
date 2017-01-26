package;

import openfl.display.Sprite;

/**
 * Test the file-save library in OpenFL
 */
class MainOpenFL extends Sprite
{
  var test:TestSave;

  // Run some tests
	public function new()
  {
		super ();

		test = new TestSave();
	}
}