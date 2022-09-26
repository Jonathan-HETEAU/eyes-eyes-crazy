package screen;

import h2d.Object;

abstract class Screen extends Object {
	public function init():Void {}

	public function update(?dt:Float):Void {}

	public function pause():Void {}

	public function restore():Void {}

	public function delete():Void {}
}
