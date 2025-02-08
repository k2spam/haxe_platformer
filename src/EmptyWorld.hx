import hxd.App;
import h2d.Graphics;

class EmptyWorld extends App{
    var player: Graphics;
    var playerX: Float = 200;
    var playerY: Float = 300;
    var playerSpeed: Float = 3;

    var cameraOffsetX: Float = 400;
    var cameraOffsetY: Float = 300;

    override function init() {
        player = new Graphics(s2d);
        player.beginFill(0x00ff00);
        player.drawRect(0, 0, 30, 30);
        player.endFill();
        player.setPosition(playerX, playerY);
    }

    override function update(dt: Float) {
        if(hxd.Key.isDown(hxd.Key.LEFT) || hxd.Key.isDown(hxd.Key.A)) {
            playerX -= playerSpeed;
        }
        if(hxd.Key.isDown(hxd.Key.RIGHT) || hxd.Key.isDown(hxd.Key.D)) {
            playerX += playerSpeed;
        }
        if(hxd.Key.isDown(hxd.Key.UP) || hxd.Key.isDown(hxd.Key.W)) {
            playerY -= playerSpeed;
        }
        if(hxd.Key.isDown(hxd.Key.DOWN) || hxd.Key.isDown(hxd.Key.S)) {
            playerY += playerSpeed;
        }

        // s2d.setPosition(-playerX + cameraOffsetX, -playerY + cameraOffsetY);
        player.setPosition(playerX, playerY);
    }

    public static function main() {
        new EmptyWorld();
    }
}