import hxd.res.Resource;
import screen.GameScreen;
import h2d.Object;
import haxe.macro.Expr.Case;
import screen.Screen;
import h2d.TileGroup;
import h3d.mat.BlendMode;
import h2d.Graphics;
import h2d.Tile;
import hxd.BitmapData;
import h3d.mat.Texture;
import h2d.Bitmap;
import h2d.Scene;
import hxd.App;

enum ScreenEnum {
	Menu;
	Game;
}

interface Navigation {
	function push(screen:ScreenEnum):Void;
	function pop():Void;
	function gotTo(screen:ScreenEnum):Void;
}

class EyesEyesCrazy extends hxd.App implements Navigation {
	private var screenPile:List<Screen> = new List<Screen>();

	override function init() {
		s2d.scaleMode = ScaleMode.LetterBox(32 * Constante.CELL_SIZE, 28 * Constante.CELL_SIZE);
        var screen = new GameScreen();
        screen.init();
		screenPile.add(screen);
		s2d.addChild(screen);
	}

	override function update(dt:Float) {
		screenPile.last().update(dt);
	}

	public function push(screen:ScreenEnum) {
        switch(screen){
            case Menu: return;
            case Game: 
        }
    }

    private function newGame(level:Int): GameScreen {
        var level =  haxe.Json.parse(hxd.Res.niveau._1.entry.getText());
        return null; 
    }

	public function pop() {}

	public function gotTo(screen:ScreenEnum) {
        clearScreens();
        
    }

	private function clearScreens() {
		for (screen in screenPile) {
			screen.delete();
		}
		screenPile.clear();
	}

	public static var inst:EyesEyesCrazy;

	static function main() {
		hxd.Res.initEmbed();
		inst = new EyesEyesCrazy();
	}
}
