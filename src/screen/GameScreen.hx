package screen;

import h2d.Object;
import h2d.Bitmap;
import h2d.TileGroup;
import h2d.Scene;

class GameScreen extends Screen {
	var background:Bitmap;

	public function new() {
		super();
	}

	override function init() {
		var tileBackground = hxd.Res.background.toTile();
		var tileGroup = new TileGroup(tileBackground, this);
		var rouge = tileBackground.sub(tileBackground.width - (3 * Constante.CELL_SIZE), 0, Constante.CELL_SIZE, Constante.CELL_SIZE);
		var bleu = tileBackground.sub(tileBackground.width - (2 * Constante.CELL_SIZE), 0, Constante.CELL_SIZE, Constante.CELL_SIZE);

		for (x in 0...16) {
			for (y in 0...28) {
				tileGroup.add(x * Constante.CELL_SIZE, y * Constante.CELL_SIZE, rouge);
			}
		}
		for (x in 16...32) {
			for (y in 0...28) {
				tileGroup.add(x * Constante.CELL_SIZE, y * Constante.CELL_SIZE, bleu);
			}
		}
	}
}
