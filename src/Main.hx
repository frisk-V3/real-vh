package;

import js.Browser;
import js.html.Event;

class Main {
    static function main() {
        new Main();
    }

    public function new() {
        setVh();

        Browser.window.addEventListener('resize', debounce(function() setVh(), 150));
        Browser.window.addEventListener('orientationchange', function(e) setVh());
    }

    private function setVh(?e:Event):Void {
        var vh:Float = Browser.window.innerHeight * 0.01;
        Browser.document.documentElement.style.setProperty('--vh', '${vh}px');
    }

    private function debounce(callback:Void->Void, wait:Int):Event->Void {
        var timeout:Null<Int> = null;
        
        return function(e:Event) {
            if (timeout != null) {
                Browser.window.clearTimeout(timeout);
            }
            timeout = Browser.window.setTimeout(function() {
                callback();
            }, wait);
        };
    }
}
