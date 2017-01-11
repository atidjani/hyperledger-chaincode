FROM hyperledger/fabric-peer:latest
# Build the chaincode
RUN go get github.com/op/go-logging
ADD ./chaincode /opt/gopath/src/github.com/my_chaincode
#RUN chmod 775 /chaincode
#WORKDIR $GOPATH/src/github.com/hyperledger/fabric/examples/chaincode/go/asset_management
WORKDIR /opt/gopath/src/github.com/my_chaincode
RUN go build
ADD ./myNodeApp /opt/gopath/src/github.com/myNodeApp
WORKDIR /opt/gopath/src/github.com/myNodeApp
#WORKDIR $GOPATH/src/github.com/hyperledger/fabric/examples/sdk/node
RUN npm install hfc
