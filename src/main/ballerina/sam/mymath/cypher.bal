import ballerina/io;

// Endpoint Contract
public type CypherClient object {

    public {
        CypherConnector cypherConnector = new;
    }

    public function init (CypherConfig cypherConfig);

    public function getClient () returns CypherConnector;
};


// Connector Contract
public type CypherConnector object {

    public {
        string keystore;
    }

    public native function cypher(string stringToCypher) returns (string);
};

//Configuration Object
public type CypherConfig {
    string keystore;
};

// =========== Implementation of the Endpoint

public function CypherClient::init (CypherConfig cypherConfig) {
    self.cypherConnector.name = cypherConfig.name;

}

public function CypherClient::getClient () returns CypherConnector {
    return self.CypherConnector;
}

// =========== End of implementation of the Endpoint


