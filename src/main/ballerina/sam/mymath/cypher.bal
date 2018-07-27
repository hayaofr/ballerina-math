// Connector Contract
public type CypherConnector object {

    public CypherConfig config;

    public native function cypher(string stringToCypher) returns (string);
};

// Endpoint Contract
public type CypherClient object {

    private CypherConfig cypherConfig;

    public CypherConnector cypherConnector = new;

    public function init(CypherConfig config);

    public native function initClient();

    public function getCallerActions() returns CypherConnector;
};

//Configuration Object
public type CypherConfig record {
    string keystore;
    string keystorePassword;
    string keyAlias;
    string keyPassword;
};

// =========== Implementation of the Endpoint

function CypherClient::init(CypherConfig config) {
    self.cypherConnector.config = config;

    self.initClient();

}

function CypherClient::getCallerActions() returns CypherConnector {
    return self.cypherConnector;
}

// =========== End of implementation of the Endpoint


