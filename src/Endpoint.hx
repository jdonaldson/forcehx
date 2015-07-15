using Type;
class Endpoint<T> {
    var http     : haxe.Http;
    var base_url : String;
    public function new(url : String){ 
        base_url = url;
        http = new haxe.Http(getUrl());
        http.onData = _onData;
        http.onError = onError;
        http.onStatus = onStatus;
    }
    function _onData(data:String){
        onData(haxe.Json.parse(data));
    }
    dynamic public function onData(data:T){}
    dynamic public function onError(error:String){}
    dynamic public function onStatus(status:Int){}

    public function request() { http.request(); }

    public function getUrl(){
        var path = this.getClass().getClassName().split('.');
        path.pop();
        path.shift();
        return '$base_url/${path.join("/")}/';
    }
}
