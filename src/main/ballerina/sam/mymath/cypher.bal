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
        string keystorePassword;
        string keyAlias;
        string keyPassword;
    }

    public native function cypher(string stringToCypher) returns (string);
};

//Configuration Object
public type CypherConfig {
    string keystore;
    string keystorePassword;
    string keyAlias;
    string keyPassword;
};

// =========== Implementation of the Endpoint

public function CypherClient::init (CypherConfig cypherConfig) {
    self.cypherConnector.keystore = cypherConfig.keystore;
    self.cypherConnector.keystorePassword = cypherConfig.keystorePassword;
    self.cypherConnector.keyAlias = cypherConfig.keyAlias;
    self.cypherConnector.keyPassword = cypherConfig.keyPassword;


}

public function CypherClient::getClient () returns CypherConnector {
    return self.CypherConnector;
}

// =========== End of implementation of the Endpoint


