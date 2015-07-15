class Main {
    static function main() {
        var e = new fhx.services.data.v34.sobjects.DescribeGlobal();
        e.onData = function(k){
            trace(k[0].label);
        }
        e.onError = function(e){
            trace(e);
        }
        e.onStatus = function(e){
            trace(e);
        }

        e.request();
    }
}
