# hyperledger-chaincode
An example of Go chaincode runnig on top of stand-alone hyperledger deployement.

After cloning the project:
Build the starter container which will contain the key value chain code and the node app used for the deployement and query

    docker build -t hyperledger/fabric-starter-kit:latest .
    
Deploy hyperledger nodes: memberservice, peer and starter

    docker-compose up
    
After approximately 20 seconds:
    
    docker exec -it starter /bash/bin
    
Inside the starter container, execute the node app by:

    node app
    
The node app will authenticate a user and deploy the chaincode to the peer node and after that it will query it.

    **** starting HFC sample ****
    member services address =membersrvc:7054
    peer address =peer:7051
    DEPLOY_MODE=dev
    enrolling user admin ...
    Enrolled JohnDoe successfully

    deploying chaincode; please wait ...
    deploy complete; results: {"uuid":"mycc","chaincodeID":"mycc"}
    invoke chaincode ...
    invoke submitted successfully; results={"uuid":"311381a6-cdd5-4de5-8757-5b85ac045d8f"}
    invoke completed successfully; results={"result":"Tx 311381a6-cdd5-4de5-8757-5b85ac045d8f complete"}
    querying chaincode ...
    query completed successfully; results={"result":{"type":"Buffer","data":  [105,115,32,116,104,101,114,101,32,97,110,121,98,111,100,121,32,111,117,116,32,116,104,101,114,101,63]}}

