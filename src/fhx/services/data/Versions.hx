package fhx.services.data;
class Versions extends SfdcEndpoint<Array<Version>> { 
    public function new() super(); 
}

typedef Version = {
    version : String,
    url     : String,
    label   : String
}
