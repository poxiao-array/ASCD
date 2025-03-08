'solc --version' running
'solc ./dataset/contracts/transaction_order/26620.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/26620.sol:
./dataset/contracts/transaction_order/26620.sol:88:34: Warning: Unused local variable
    function oraclize_setNetwork(uint8 networkID) internal returns(bool){
                                 ^-------------^
./dataset/contracts/transaction_order/26620.sol:127:25: Warning: Unused local variable
    function __callback(bytes32 myid, string result, bytes proof) {
                        ^----------^
./dataset/contracts/transaction_order/26620.sol:127:39: Warning: Unused local variable
    function __callback(bytes32 myid, string result, bytes proof) {
                                      ^-----------^
./dataset/contracts/transaction_order/26620.sol:127:54: Warning: Unused local variable
    function __callback(bytes32 myid, string result, bytes proof) {
                                                     ^---------^
./dataset/contracts/transaction_order/26620.sol:532:26: Warning: Unused local variable
    function getCodeSize(address _addr) constant internal returns(uint _size) {
                         ^-----------^
./dataset/contracts/transaction_order/26620.sol:532:67: Warning: Unused local variable
    function getCodeSize(address _addr) constant internal returns(uint _size) {
                                                                  ^--------^
./dataset/contracts/transaction_order/26620.sol:773:9: Warning: Unused local variable
        bytes32 sessionKeyHash_bytes32 = oraclize_randomDS_getSessionPubKeyHash();
        ^----------------------------^
./dataset/contracts/transaction_order/26620.sol:930:24: Warning: Unused local variable
    function copyBytes(bytes from, uint fromOffset, uint length, bytes to, uint toOffset) internal returns (bytes) {
                       ^--------^
./dataset/contracts/transaction_order/26620.sol:956:30: Warning: Unused local variable
    function safer_ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal returns (bool, address) {
                             ^----------^
./dataset/contracts/transaction_order/26620.sol:956:44: Warning: Unused local variable
    function safer_ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal returns (bool, address) {
                                           ^-----^
./dataset/contracts/transaction_order/26620.sol:956:53: Warning: Unused local variable
    function safer_ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal returns (bool, address) {
                                                    ^-------^
./dataset/contracts/transaction_order/26620.sol:956:64: Warning: Unused local variable
    function safer_ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) internal returns (bool, address) {
                                                               ^-------^
./dataset/contracts/transaction_order/26620.sol:1238:54: Warning: Unused local variable
    function __callback(bytes32 myid, string result, bytes proof)
                                                     ^---------^

INFO:Detectors:
Dice.safeSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1185-1207) sends eth to arbitrary user
	Dangerous calls:
	- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
Reentrancy in Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249):
	External calls:
	- onlyOraclize() (dataset/contracts/transaction_order/26620.sol#1239)
		- oraclize.cbAddress() (dataset/contracts/transaction_order/26620.sol#516)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	External calls sending eth:
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	State variables written after the call(s):
	- bets[myid].numberRolled = numberRolled (dataset/contracts/transaction_order/26620.sol#1246)
	Dice.bets (dataset/contracts/transaction_order/26620.sol#1057) can be used in cross function reentrancies:
	- Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249)
	- Dice.bet(uint256) (dataset/contracts/transaction_order/26620.sol#1215-1236)
	- Dice.bets (dataset/contracts/transaction_order/26620.sol#1057)
	- Dice.getBet(uint256) (dataset/contracts/transaction_order/26620.sol#1162-1170)
	- Dice.onlyIfBetExist(bytes32) (dataset/contracts/transaction_order/26620.sol#1106-1109)
	- Dice.onlyIfBetSizeIsStillCorrect(bytes32,uint256) (dataset/contracts/transaction_order/26620.sol#1111-1120)
	- Dice.onlyIfNotProcessed(bytes32) (dataset/contracts/transaction_order/26620.sol#1151-1154)
	- Dice.onlyIfValidRoll(bytes32,string) (dataset/contracts/transaction_order/26620.sol#1122-1130)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- bets[myid].numberRolled = INVALID_BET_MARKER (dataset/contracts/transaction_order/26620.sol#1116)
	Dice.bets (dataset/contracts/transaction_order/26620.sol#1057) can be used in cross function reentrancies:
	- Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249)
	- Dice.bet(uint256) (dataset/contracts/transaction_order/26620.sol#1215-1236)
	- Dice.bets (dataset/contracts/transaction_order/26620.sol#1057)
	- Dice.getBet(uint256) (dataset/contracts/transaction_order/26620.sol#1162-1170)
	- Dice.onlyIfBetExist(bytes32) (dataset/contracts/transaction_order/26620.sol#1106-1109)
	- Dice.onlyIfBetSizeIsStillCorrect(bytes32,uint256) (dataset/contracts/transaction_order/26620.sol#1111-1120)
	- Dice.onlyIfNotProcessed(bytes32) (dataset/contracts/transaction_order/26620.sol#1151-1154)
	- Dice.onlyIfValidRoll(bytes32,string) (dataset/contracts/transaction_order/26620.sol#1122-1130)
Reentrancy in Dice.getProfits() (dataset/contracts/transaction_order/26620.sol#1293-1298):
	External calls:
	- safeSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1295)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	State variables written after the call(s):
	- investorsLosses = 0 (dataset/contracts/transaction_order/26620.sol#1297)
	Dice.investorsLosses (dataset/contracts/transaction_order/26620.sol#1061) can be used in cross function reentrancies:
	- Dice.getProfits() (dataset/contracts/transaction_order/26620.sol#1293-1298)
	- Dice.investorsLosses (dataset/contracts/transaction_order/26620.sol#1061)
	- Dice.isWinningBet(Dice.Bet,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1251-1264)
	- investorsProfit = 0 (dataset/contracts/transaction_order/26620.sol#1296)
	Dice.investorsProfit (dataset/contracts/transaction_order/26620.sol#1060) can be used in cross function reentrancies:
	- Dice.getProfits() (dataset/contracts/transaction_order/26620.sol#1293-1298)
	- Dice.investorsProfit (dataset/contracts/transaction_order/26620.sol#1060)
	- Dice.isLosingBet(Dice.Bet,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1266-1278)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities
INFO:Detectors:
usingOraclize.getCodeSize(address) (dataset/contracts/transaction_order/26620.sol#532-536) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
Reentrancy in usingOraclize.oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#73-81):
	External calls:
	- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
	- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	State variables written after the call(s):
	- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-1
INFO:Detectors:
Modifier Dice.onlyIfBetSizeIsStillCorrect(bytes32,uint256) (dataset/contracts/transaction_order/26620.sol#1111-1120) does not always execute _; or revert
Modifier Dice.onlyWinningBets(uint256,uint256) (dataset/contracts/transaction_order/26620.sol#1132-1136) does not always execute _; or revert
Modifier Dice.onlyLosingBets(uint256,uint256) (dataset/contracts/transaction_order/26620.sol#1138-1142) does not always execute _; or revert
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-modifier
INFO:Detectors:
Reentrancy in Dice.bet(uint256) (dataset/contracts/transaction_order/26620.sol#1215-1236):
	External calls:
	- oraclizeFee = OraclizeI(OAR.getAddress()).getPrice(URL,ORACLIZE_GAS_LIMIT + safeGas) (dataset/contracts/transaction_order/26620.sol#1216)
	- myid = oraclize_query(nested,[URL] ['json(https://api.random.org/json-rpc/1/invoke).result.random.data.0', '\n{"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"${[decrypt] BHvgt4Bhec2IJyErKzdCVu3FSzo6mKW10ZDb38Ruyj6bOCyzY5738oLb8a5fGGfMhjcVjabuo9YOJ+f83/lXZELZQSmMAwbhg+thjUJZMoBLsFmAnD17UjEPPr1ffUNfAn7AI74sB3AwVh3296JCtcEVWn66}","n":1,"min":1,"max":10000,"replacement":true${[identity] "}"},"id":1${[identity] "}"}']) (dataset/contracts/transaction_order/26620.sol#1221-1223)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#143)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.query.value(price)(0,datasource,arg) (dataset/contracts/transaction_order/26620.sol#145)
	External calls sending eth:
	- myid = oraclize_query(nested,[URL] ['json(https://api.random.org/json-rpc/1/invoke).result.random.data.0', '\n{"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"${[decrypt] BHvgt4Bhec2IJyErKzdCVu3FSzo6mKW10ZDb38Ruyj6bOCyzY5738oLb8a5fGGfMhjcVjabuo9YOJ+f83/lXZELZQSmMAwbhg+thjUJZMoBLsFmAnD17UjEPPr1ffUNfAn7AI74sB3AwVh3296JCtcEVWn66}","n":1,"min":1,"max":10000,"replacement":true${[identity] "}"},"id":1${[identity] "}"}']) (dataset/contracts/transaction_order/26620.sol#1221-1223)
		- oraclize.query.value(price)(0,datasource,arg) (dataset/contracts/transaction_order/26620.sol#145)
	State variables written after the call(s):
	- amountBets += 1 (dataset/contracts/transaction_order/26620.sol#1228)
	- bets[myid] = Bet(msg.sender,betValue,0,pwin) (dataset/contracts/transaction_order/26620.sol#1226)
	- betsKeys.push(myid) (dataset/contracts/transaction_order/26620.sol#1227)
	- myid = oraclize_query(nested,[URL] ['json(https://api.random.org/json-rpc/1/invoke).result.random.data.0', '\n{"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"${[decrypt] BHvgt4Bhec2IJyErKzdCVu3FSzo6mKW10ZDb38Ruyj6bOCyzY5738oLb8a5fGGfMhjcVjabuo9YOJ+f83/lXZELZQSmMAwbhg+thjUJZMoBLsFmAnD17UjEPPr1ffUNfAn7AI74sB3AwVh3296JCtcEVWn66}","n":1,"min":1,"max":10000,"replacement":true${[identity] "}"},"id":1${[identity] "}"}']) (dataset/contracts/transaction_order/26620.sol#1221-1223)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in Dice.isLosingBet(Dice.Bet,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1266-1278):
	External calls:
	- safeSend(thisBet.playerAddress,1) (dataset/contracts/transaction_order/26620.sol#1268)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	State variables written after the call(s):
	- investorsProfit += (thisBet.amountBet - 1) (dataset/contracts/transaction_order/26620.sol#1277)
Reentrancy in Dice.isWinningBet(Dice.Bet,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1251-1264):
	External calls:
	- safeSend(thisBet.playerAddress,winAmount) (dataset/contracts/transaction_order/26620.sol#1254)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	State variables written after the call(s):
	- amountWon += winAmount (dataset/contracts/transaction_order/26620.sol#1262)
	- investorsLosses += winAmount - thisBet.amountBet (dataset/contracts/transaction_order/26620.sol#1263)
Reentrancy in usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256) (dataset/contracts/transaction_order/26620.sol#767-784):
	External calls:
	- sessionKeyHash_bytes32 = oraclize_randomDS_getSessionPubKeyHash() (dataset/contracts/transaction_order/26620.sol#773)
		- oraclize.randomDS_getSessionPubKeyHash() (dataset/contracts/transaction_order/26620.sol#529)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- queryId = oraclize_query(_delay,random,args,_customGasLimit) (dataset/contracts/transaction_order/26620.sol#781)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	External calls sending eth:
	- queryId = oraclize_query(_delay,random,args,_customGasLimit) (dataset/contracts/transaction_order/26620.sol#781)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- queryId = oraclize_query(_delay,random,args,_customGasLimit) (dataset/contracts/transaction_order/26620.sol#781)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
	- oraclize_randomDS_setCommitment(queryId,sha3()(bytes8(_delay),args[1],sha256()(args[0]),args[2])) (dataset/contracts/transaction_order/26620.sol#782)
		- oraclize_randomDS_args[queryId] = commitment (dataset/contracts/transaction_order/26620.sol#787)
Reentrancy in usingOraclize.oraclize_query(string,string[1]) (dataset/contracts/transaction_order/26620.sol#206-210):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#209)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#183)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#206)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#209)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#209)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[1]) (dataset/contracts/transaction_order/26620.sol#211-215):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#214)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#189)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#211)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#214)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#214)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#216-220):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#219)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#195)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#216)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#219)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#219)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#221-225):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#224)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#201)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#221)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#224)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#224)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[2]) (dataset/contracts/transaction_order/26620.sol#227-232):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#231)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#183)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#227)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#231)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#231)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[2]) (dataset/contracts/transaction_order/26620.sol#233-238):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#237)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#189)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#233)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#237)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#237)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#239-244):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#243)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#195)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#239)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#243)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#243)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#245-250):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#249)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#201)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#245)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#249)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#249)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[3]) (dataset/contracts/transaction_order/26620.sol#251-257):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#256)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#183)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#251)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#256)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#256)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[3]) (dataset/contracts/transaction_order/26620.sol#258-264):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#263)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#189)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#258)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#263)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#263)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#265-271):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#270)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#195)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#265)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#270)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#270)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#272-278):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#277)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#201)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#272)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#277)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#277)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[4]) (dataset/contracts/transaction_order/26620.sol#280-287):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#286)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#183)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#280)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#286)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#286)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[4]) (dataset/contracts/transaction_order/26620.sol#288-295):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#294)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#189)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#288)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#294)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#294)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#296-303):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#302)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#195)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#296)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#302)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#302)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#304-311):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#310)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#201)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#304)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#310)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#310)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[5]) (dataset/contracts/transaction_order/26620.sol#312-320):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#319)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#183)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#312)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#319)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#186)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#319)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[5]) (dataset/contracts/transaction_order/26620.sol#321-329):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#328)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#189)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#321)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#328)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#192)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#328)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#330-338):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#337)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#195)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#330)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#337)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#198)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#337)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#339-347):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#346)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#201)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#339)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#346)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#204)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#346)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#372-376):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#375)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#349)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#372)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#375)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#375)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#377-381):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#380)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#355)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#377)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#380)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#380)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#382-386):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#385)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#382)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#385)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#385)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#387-391):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#390)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#367)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#387)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#390)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#390)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#393-398):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#397)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#349)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#393)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#397)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#397)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#399-404):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#403)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#355)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#399)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#403)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#403)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#405-410):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#409)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#405)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#409)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#409)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#411-416):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#415)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#367)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#411)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#415)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#415)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#417-423):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#422)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#349)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#417)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#422)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#422)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#424-430):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#429)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#355)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#424)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#429)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#429)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#431-437):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#436)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#431)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#436)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#436)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#438-444):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#443)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#367)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#438)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#443)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#443)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#446-453):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#452)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#349)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#446)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#452)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#452)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#454-461):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#460)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#355)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#454)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#460)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#460)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#462-469):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#468)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#462)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#468)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#468)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#470-477):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#476)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#367)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#470)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#476)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#476)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#478-486):
	External calls:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#485)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#349)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#478)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#485)
		- oraclize.queryN.value(price)(0,datasource,args) (dataset/contracts/transaction_order/26620.sol#352)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#485)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#487-495):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#494)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#355)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#487)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#494)
		- oraclize.queryN.value(price)(timestamp,datasource,args) (dataset/contracts/transaction_order/26620.sol#358)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs) (dataset/contracts/transaction_order/26620.sol#494)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(uint256,string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#496-504):
	External calls:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#503)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#361)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#496)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#503)
		- oraclize.queryN_withGasLimit.value(price)(timestamp,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#364)
	State variables written after the call(s):
	- oraclize_query(timestamp,datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#503)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reentrancy in usingOraclize.oraclize_query(string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#505-513):
	External calls:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#512)
		- price = oraclize.getPrice(datasource,gaslimit) (dataset/contracts/transaction_order/26620.sol#367)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	- oraclizeAPI() (dataset/contracts/transaction_order/26620.sol#505)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	External calls sending eth:
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#512)
		- oraclize.queryN_withGasLimit.value(price)(0,datasource,args,gaslimit) (dataset/contracts/transaction_order/26620.sol#370)
	State variables written after the call(s):
	- oraclize_query(datasource,dynargs,gaslimit) (dataset/contracts/transaction_order/26620.sol#512)
		- oraclize_network_name = _network_name (dataset/contracts/transaction_order/26620.sol#760)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-2
INFO:Detectors:
Reentrancy in Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249):
	External calls:
	- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyOraclize() (dataset/contracts/transaction_order/26620.sol#1239)
		- oraclize.cbAddress() (dataset/contracts/transaction_order/26620.sol#516)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	External calls sending eth:
	- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_BetWon(thisBet.playerAddress,numberRolled,winAmount,myid) (dataset/contracts/transaction_order/26620.sol#1253)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
	- LOG_FailedSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1199)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
	- LOG_FailedSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1202)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
	- LOG_SuccessfulSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1206)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
	- LOG_ValueIsTooBig() (dataset/contracts/transaction_order/26620.sol#1194)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
	- LOG_ZeroSend() (dataset/contracts/transaction_order/26620.sol#1189)
		- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
Reentrancy in Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249):
	External calls:
	- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyOraclize() (dataset/contracts/transaction_order/26620.sol#1239)
		- oraclize.cbAddress() (dataset/contracts/transaction_order/26620.sol#516)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	External calls sending eth:
	- isWinningBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1247)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_BetLost(thisBet.playerAddress,numberRolled,thisBet.amountBet,myid) (dataset/contracts/transaction_order/26620.sol#1267)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
	- LOG_FailedSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1199)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
	- LOG_FailedSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1202)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
	- LOG_SuccessfulSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1206)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
	- LOG_ValueIsTooBig() (dataset/contracts/transaction_order/26620.sol#1194)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
	- LOG_ZeroSend() (dataset/contracts/transaction_order/26620.sol#1189)
		- isLosingBet(bets[myid],numberRolled,myid) (dataset/contracts/transaction_order/26620.sol#1248)
Reentrancy in Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249):
	External calls:
	- onlyOraclize() (dataset/contracts/transaction_order/26620.sol#1239)
		- oraclize.cbAddress() (dataset/contracts/transaction_order/26620.sol#516)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	External calls sending eth:
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_FailedSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1199)
		- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
	- LOG_FailedSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1202)
		- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
	- LOG_SuccessfulSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1206)
		- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
	- LOG_ValueIsTooBig() (dataset/contracts/transaction_order/26620.sol#1194)
		- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
	- LOG_ZeroSend() (dataset/contracts/transaction_order/26620.sol#1189)
		- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
Reentrancy in Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249):
	External calls:
	- onlyOraclize() (dataset/contracts/transaction_order/26620.sol#1239)
		- oraclize.cbAddress() (dataset/contracts/transaction_order/26620.sol#516)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	External calls sending eth:
	- onlyIfValidRoll(myid,result) (dataset/contracts/transaction_order/26620.sol#1242)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_FailedSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1199)
		- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
	- LOG_FailedSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1202)
		- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
	- LOG_SuccessfulSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1206)
		- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
	- LOG_ValueIsTooBig() (dataset/contracts/transaction_order/26620.sol#1194)
		- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
	- LOG_ZeroSend() (dataset/contracts/transaction_order/26620.sol#1189)
		- onlyIfBetSizeIsStillCorrect(myid,bets[myid].pwin) (dataset/contracts/transaction_order/26620.sol#1243)
Reentrancy in Dice.bet(uint256) (dataset/contracts/transaction_order/26620.sol#1215-1236):
	External calls:
	- oraclizeFee = OraclizeI(OAR.getAddress()).getPrice(URL,ORACLIZE_GAS_LIMIT + safeGas) (dataset/contracts/transaction_order/26620.sol#1216)
	- myid = oraclize_query(nested,[URL] ['json(https://api.random.org/json-rpc/1/invoke).result.random.data.0', '\n{"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"${[decrypt] BHvgt4Bhec2IJyErKzdCVu3FSzo6mKW10ZDb38Ruyj6bOCyzY5738oLb8a5fGGfMhjcVjabuo9YOJ+f83/lXZELZQSmMAwbhg+thjUJZMoBLsFmAnD17UjEPPr1ffUNfAn7AI74sB3AwVh3296JCtcEVWn66}","n":1,"min":1,"max":10000,"replacement":true${[identity] "}"},"id":1${[identity] "}"}']) (dataset/contracts/transaction_order/26620.sol#1221-1223)
		- price = oraclize.getPrice(datasource) (dataset/contracts/transaction_order/26620.sol#143)
		- address(oraclize) != OAR.getAddress() (dataset/contracts/transaction_order/26620.sol#77)
		- oraclize = OraclizeI(OAR.getAddress()) (dataset/contracts/transaction_order/26620.sol#78)
		- oraclize.query.value(price)(0,datasource,arg) (dataset/contracts/transaction_order/26620.sol#145)
	External calls sending eth:
	- myid = oraclize_query(nested,[URL] ['json(https://api.random.org/json-rpc/1/invoke).result.random.data.0', '\n{"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"${[decrypt] BHvgt4Bhec2IJyErKzdCVu3FSzo6mKW10ZDb38Ruyj6bOCyzY5738oLb8a5fGGfMhjcVjabuo9YOJ+f83/lXZELZQSmMAwbhg+thjUJZMoBLsFmAnD17UjEPPr1ffUNfAn7AI74sB3AwVh3296JCtcEVWn66}","n":1,"min":1,"max":10000,"replacement":true${[identity] "}"},"id":1${[identity] "}"}']) (dataset/contracts/transaction_order/26620.sol#1221-1223)
		- oraclize.query.value(price)(0,datasource,arg) (dataset/contracts/transaction_order/26620.sol#145)
	Event emitted after the call(s):
	- LOG_NewBet(msg.sender,betValue,pwin,myid) (dataset/contracts/transaction_order/26620.sol#1225)
Reentrancy in Dice.divest(uint256) (dataset/contracts/transaction_order/26620.sol#1288-1291):
	External calls:
	- safeSend(owner,value) (dataset/contracts/transaction_order/26620.sol#1289)
		- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
		- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_Payout(owner,value) (dataset/contracts/transaction_order/26620.sol#1290)
Reentrancy in Dice.safeSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1185-1207):
	External calls:
	- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
	- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
	Event emitted after the call(s):
	- LOG_SuccessfulSend(addr,value) (dataset/contracts/transaction_order/26620.sol#1206)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#reentrancy-vulnerabilities-3
INFO:Detectors:
Dice.safeSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1185-1207) tries to limit the gas of an external call that controls implicit decoding
	! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#return-bomb
INFO:Detectors:
usingOraclize.getCodeSize(address) (dataset/contracts/transaction_order/26620.sol#532-536) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#533-536)
usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256) (dataset/contracts/transaction_order/26620.sol#767-784) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#774-780)
usingOraclize.verifySig(bytes32,bytes,bytes) (dataset/contracts/transaction_order/26620.sol#793-819) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#807-813)
usingOraclize.copyBytes(bytes,uint256,uint256,bytes,uint256) (dataset/contracts/transaction_order/26620.sol#930-952) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#943-947)
usingOraclize.safer_ecrecover(bytes32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/26620.sol#956-981) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#967-980)
usingOraclize.ecrecovery(bytes32,bytes) (dataset/contracts/transaction_order/26620.sol#984-1022) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26620.sol#995-1015)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
usingOraclize.oraclize_randomDS_proofVerify__sessionKeyValidity(bytes,uint256) (dataset/contracts/transaction_order/26620.sol#821-854) compares to a boolean constant:
	-sigok == false (dataset/contracts/transaction_order/26620.sol#838)
usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#866-874) compares to a boolean constant:
	-proofVerified == false (dataset/contracts/transaction_order/26620.sol#871)
usingOraclize.oraclize_randomDS_proofVerify__main(bytes,bytes32,bytes,string) (dataset/contracts/transaction_order/26620.sol#886-926) compares to a boolean constant:
	-oraclize_randomDS_sessionKeysHashVerified[sessionPubkeyHash] == false (dataset/contracts/transaction_order/26620.sol#921)
usingOraclize.oraclize_randomDS_proofVerify(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#856-864) compares to a boolean constant:
	-proofVerified == false (dataset/contracts/transaction_order/26620.sol#861)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#boolean-equality
INFO:Detectors:
usingOraclize.ba2cbor(bytes[]) (dataset/contracts/transaction_order/26620.sol#715-755) is never used and should be removed
usingOraclize.copyBytes(bytes,uint256,uint256,bytes,uint256) (dataset/contracts/transaction_order/26620.sol#930-952) is never used and should be removed
usingOraclize.ecrecovery(bytes32,bytes) (dataset/contracts/transaction_order/26620.sol#984-1022) is never used and should be removed
usingOraclize.indexOf(string,string) (dataset/contracts/transaction_order/26620.sol#576-601) is never used and should be removed
usingOraclize.matchBytes32Prefix(bytes32,bytes,uint256) (dataset/contracts/transaction_order/26620.sol#876-884) is never used and should be removed
usingOraclize.oraclize_getNetworkName() (dataset/contracts/transaction_order/26620.sol#763-765) is never used and should be removed
usingOraclize.oraclize_getPrice(string) (dataset/contracts/transaction_order/26620.sol#134-136) is never used and should be removed
usingOraclize.oraclize_getPrice(string,uint256) (dataset/contracts/transaction_order/26620.sol#138-140) is never used and should be removed
usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256) (dataset/contracts/transaction_order/26620.sol#767-784) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#372-376) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#387-391) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#393-398) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#411-416) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#417-423) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#438-444) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#446-453) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#470-477) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#478-486) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#505-513) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[]) (dataset/contracts/transaction_order/26620.sol#348-353) is never used and should be removed
usingOraclize.oraclize_query(string,bytes[],uint256) (dataset/contracts/transaction_order/26620.sol#366-371) is never used and should be removed
usingOraclize.oraclize_query(string,string,string) (dataset/contracts/transaction_order/26620.sol#162-166) is never used and should be removed
usingOraclize.oraclize_query(string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#177-181) is never used and should be removed
usingOraclize.oraclize_query(string,string,uint256) (dataset/contracts/transaction_order/26620.sol#157-161) is never used and should be removed
usingOraclize.oraclize_query(string,string[1]) (dataset/contracts/transaction_order/26620.sol#206-210) is never used and should be removed
usingOraclize.oraclize_query(string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#221-225) is never used and should be removed
usingOraclize.oraclize_query(string,string[2]) (dataset/contracts/transaction_order/26620.sol#227-232) is never used and should be removed
usingOraclize.oraclize_query(string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#245-250) is never used and should be removed
usingOraclize.oraclize_query(string,string[3]) (dataset/contracts/transaction_order/26620.sol#251-257) is never used and should be removed
usingOraclize.oraclize_query(string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#272-278) is never used and should be removed
usingOraclize.oraclize_query(string,string[4]) (dataset/contracts/transaction_order/26620.sol#280-287) is never used and should be removed
usingOraclize.oraclize_query(string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#304-311) is never used and should be removed
usingOraclize.oraclize_query(string,string[5]) (dataset/contracts/transaction_order/26620.sol#312-320) is never used and should be removed
usingOraclize.oraclize_query(string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#339-347) is never used and should be removed
usingOraclize.oraclize_query(string,string[]) (dataset/contracts/transaction_order/26620.sol#182-187) is never used and should be removed
usingOraclize.oraclize_query(string,string[],uint256) (dataset/contracts/transaction_order/26620.sol#200-205) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#377-381) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#382-386) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#399-404) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#405-410) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#424-430) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#431-437) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#454-461) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#462-469) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#487-495) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#496-504) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[]) (dataset/contracts/transaction_order/26620.sol#354-359) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,bytes[],uint256) (dataset/contracts/transaction_order/26620.sol#360-365) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string) (dataset/contracts/transaction_order/26620.sol#147-151) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string,string) (dataset/contracts/transaction_order/26620.sol#167-171) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#172-176) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#152-156) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[1]) (dataset/contracts/transaction_order/26620.sol#211-215) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#216-220) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[2]) (dataset/contracts/transaction_order/26620.sol#233-238) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#239-244) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[3]) (dataset/contracts/transaction_order/26620.sol#258-264) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#265-271) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[4]) (dataset/contracts/transaction_order/26620.sol#288-295) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#296-303) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[5]) (dataset/contracts/transaction_order/26620.sol#321-329) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#330-338) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[]) (dataset/contracts/transaction_order/26620.sol#188-193) is never used and should be removed
usingOraclize.oraclize_query(uint256,string,string[],uint256) (dataset/contracts/transaction_order/26620.sol#194-199) is never used and should be removed
usingOraclize.oraclize_randomDS_getSessionPubKeyHash() (dataset/contracts/transaction_order/26620.sol#528-530) is never used and should be removed
usingOraclize.oraclize_randomDS_proofVerify__main(bytes,bytes32,bytes,string) (dataset/contracts/transaction_order/26620.sol#886-926) is never used and should be removed
usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#866-874) is never used and should be removed
usingOraclize.oraclize_randomDS_proofVerify__sessionKeyValidity(bytes,uint256) (dataset/contracts/transaction_order/26620.sol#821-854) is never used and should be removed
usingOraclize.oraclize_randomDS_setCommitment(bytes32,bytes32) (dataset/contracts/transaction_order/26620.sol#786-788) is never used and should be removed
usingOraclize.oraclize_setConfig(bytes32) (dataset/contracts/transaction_order/26620.sol#524-526) is never used and should be removed
usingOraclize.oraclize_setCustomGasPrice(uint256) (dataset/contracts/transaction_order/26620.sol#521-523) is never used and should be removed
usingOraclize.oraclize_setProof(bytes1) (dataset/contracts/transaction_order/26620.sol#518-520) is never used and should be removed
usingOraclize.oraclize_useCoupon(string) (dataset/contracts/transaction_order/26620.sol#130-132) is never used and should be removed
usingOraclize.parseAddr(string) (dataset/contracts/transaction_order/26620.sol#538-556) is never used and should be removed
usingOraclize.safer_ecrecover(bytes32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/26620.sol#956-981) is never used and should be removed
usingOraclize.strCompare(string,string) (dataset/contracts/transaction_order/26620.sol#558-574) is never used and should be removed
usingOraclize.strConcat(string,string) (dataset/contracts/transaction_order/26620.sol#628-630) is never used and should be removed
usingOraclize.strConcat(string,string,string) (dataset/contracts/transaction_order/26620.sol#624-626) is never used and should be removed
usingOraclize.strConcat(string,string,string,string) (dataset/contracts/transaction_order/26620.sol#620-622) is never used and should be removed
usingOraclize.strConcat(string,string,string,string,string) (dataset/contracts/transaction_order/26620.sol#603-618) is never used and should be removed
usingOraclize.stra2cbor(string[]) (dataset/contracts/transaction_order/26620.sol#673-713) is never used and should be removed
usingOraclize.uint2str(uint256) (dataset/contracts/transaction_order/26620.sol#656-671) is never used and should be removed
usingOraclize.verifySig(bytes32,bytes,bytes) (dataset/contracts/transaction_order/26620.sol#793-819) is never used and should be removed
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dead-code
INFO:Detectors:
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#768):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected oraclize_randomDS_setCommitment(queryId,sha3()(bytes8(_delay),args[1],sha256()(args[0]),args[2])) (dataset/contracts/transaction_order/26620.sol#782):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected address(sha3()(pubkey)) == signer (dataset/contracts/transaction_order/26620.sol#814):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected (address(sha3()(pubkey)) == signer) (dataset/contracts/transaction_order/26620.sol#817):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected ! (sha3()(keyhash) == sha3()(sha256()(context_name,queryId))) (dataset/contracts/transaction_order/26620.sol#892):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected oraclize_randomDS_args[queryId] == sha3()(commitmentSlice1,sessionPubkeyHash) (dataset/contracts/transaction_order/26620.sol#910):
	- Usage of "sha3()" should be replaced with "keccak256()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#935):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#858):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#861):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1217):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1232):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1259):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1274):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1305):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1092):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1097):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1102):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1107):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1146):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1147):
	- Usage of "throw" should be replaced with "revert()"
Deprecated standard detected THROW (dataset/contracts/transaction_order/26620.sol#1152):
	- Usage of "throw" should be replaced with "revert()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
INFO:Detectors:
Version constraint ^0.4.11 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector
	- DelegateCallReturnValue
	- ECRecoverMalformedInput
	- SkipEmptyStringLiteral.
It is used by:
	- ^0.4.11 (dataset/contracts/transaction_order/26620.sol#1)
solc-0.4.11 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Low level call in Dice.safeSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1185-1207):
	- ! (addr.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1198)
	- ! (owner.call.gas(safeGas).value(value)()) (dataset/contracts/transaction_order/26620.sol#1202)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#low-level-calls
INFO:Detectors:
Function OraclizeI.query_withGasLimit(uint256,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#38) is not in mixedCase
Function OraclizeI.query2_withGasLimit(uint256,string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#40) is not in mixedCase
Function OraclizeI.queryN_withGasLimit(uint256,string,bytes,uint256) (dataset/contracts/transaction_order/26620.sol#42) is not in mixedCase
Function OraclizeI.randomDS_getSessionPubKeyHash() (dataset/contracts/transaction_order/26620.sol#49) is not in mixedCase
Contract usingOraclize (dataset/contracts/transaction_order/26620.sol#54-1024) is not in CapWords
Function usingOraclize.oraclize_setNetwork(uint8) (dataset/contracts/transaction_order/26620.sol#88-122) is not in mixedCase
Function usingOraclize.__callback(bytes32,string) (dataset/contracts/transaction_order/26620.sol#124-126) is not in mixedCase
Function usingOraclize.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#127-128) is not in mixedCase
Function usingOraclize.oraclize_useCoupon(string) (dataset/contracts/transaction_order/26620.sol#130-132) is not in mixedCase
Function usingOraclize.oraclize_getPrice(string) (dataset/contracts/transaction_order/26620.sol#134-136) is not in mixedCase
Function usingOraclize.oraclize_getPrice(string,uint256) (dataset/contracts/transaction_order/26620.sol#138-140) is not in mixedCase
Function usingOraclize.oraclize_query(string,string) (dataset/contracts/transaction_order/26620.sol#142-146) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string) (dataset/contracts/transaction_order/26620.sol#147-151) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#152-156) is not in mixedCase
Function usingOraclize.oraclize_query(string,string,uint256) (dataset/contracts/transaction_order/26620.sol#157-161) is not in mixedCase
Function usingOraclize.oraclize_query(string,string,string) (dataset/contracts/transaction_order/26620.sol#162-166) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string,string) (dataset/contracts/transaction_order/26620.sol#167-171) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#172-176) is not in mixedCase
Function usingOraclize.oraclize_query(string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#177-181) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[]) (dataset/contracts/transaction_order/26620.sol#182-187) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[]) (dataset/contracts/transaction_order/26620.sol#188-193) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[],uint256) (dataset/contracts/transaction_order/26620.sol#194-199) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[],uint256) (dataset/contracts/transaction_order/26620.sol#200-205) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[1]) (dataset/contracts/transaction_order/26620.sol#206-210) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[1]) (dataset/contracts/transaction_order/26620.sol#211-215) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#216-220) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[1],uint256) (dataset/contracts/transaction_order/26620.sol#221-225) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[2]) (dataset/contracts/transaction_order/26620.sol#227-232) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[2]) (dataset/contracts/transaction_order/26620.sol#233-238) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#239-244) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[2],uint256) (dataset/contracts/transaction_order/26620.sol#245-250) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[3]) (dataset/contracts/transaction_order/26620.sol#251-257) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[3]) (dataset/contracts/transaction_order/26620.sol#258-264) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#265-271) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[3],uint256) (dataset/contracts/transaction_order/26620.sol#272-278) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[4]) (dataset/contracts/transaction_order/26620.sol#280-287) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[4]) (dataset/contracts/transaction_order/26620.sol#288-295) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#296-303) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[4],uint256) (dataset/contracts/transaction_order/26620.sol#304-311) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[5]) (dataset/contracts/transaction_order/26620.sol#312-320) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[5]) (dataset/contracts/transaction_order/26620.sol#321-329) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#330-338) is not in mixedCase
Function usingOraclize.oraclize_query(string,string[5],uint256) (dataset/contracts/transaction_order/26620.sol#339-347) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[]) (dataset/contracts/transaction_order/26620.sol#348-353) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[]) (dataset/contracts/transaction_order/26620.sol#354-359) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[],uint256) (dataset/contracts/transaction_order/26620.sol#360-365) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[],uint256) (dataset/contracts/transaction_order/26620.sol#366-371) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#372-376) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[1]) (dataset/contracts/transaction_order/26620.sol#377-381) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#382-386) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[1],uint256) (dataset/contracts/transaction_order/26620.sol#387-391) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#393-398) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[2]) (dataset/contracts/transaction_order/26620.sol#399-404) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#405-410) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[2],uint256) (dataset/contracts/transaction_order/26620.sol#411-416) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#417-423) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[3]) (dataset/contracts/transaction_order/26620.sol#424-430) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#431-437) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[3],uint256) (dataset/contracts/transaction_order/26620.sol#438-444) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#446-453) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[4]) (dataset/contracts/transaction_order/26620.sol#454-461) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#462-469) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[4],uint256) (dataset/contracts/transaction_order/26620.sol#470-477) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#478-486) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[5]) (dataset/contracts/transaction_order/26620.sol#487-495) is not in mixedCase
Function usingOraclize.oraclize_query(uint256,string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#496-504) is not in mixedCase
Function usingOraclize.oraclize_query(string,bytes[5],uint256) (dataset/contracts/transaction_order/26620.sol#505-513) is not in mixedCase
Function usingOraclize.oraclize_cbAddress() (dataset/contracts/transaction_order/26620.sol#515-517) is not in mixedCase
Function usingOraclize.oraclize_setProof(bytes1) (dataset/contracts/transaction_order/26620.sol#518-520) is not in mixedCase
Function usingOraclize.oraclize_setCustomGasPrice(uint256) (dataset/contracts/transaction_order/26620.sol#521-523) is not in mixedCase
Function usingOraclize.oraclize_setConfig(bytes32) (dataset/contracts/transaction_order/26620.sol#524-526) is not in mixedCase
Function usingOraclize.oraclize_randomDS_getSessionPubKeyHash() (dataset/contracts/transaction_order/26620.sol#528-530) is not in mixedCase
Parameter usingOraclize.parseAddr(string)._a (dataset/contracts/transaction_order/26620.sol#538) is not in mixedCase
Parameter usingOraclize.strCompare(string,string)._a (dataset/contracts/transaction_order/26620.sol#558) is not in mixedCase
Parameter usingOraclize.strCompare(string,string)._b (dataset/contracts/transaction_order/26620.sol#558) is not in mixedCase
Parameter usingOraclize.indexOf(string,string)._haystack (dataset/contracts/transaction_order/26620.sol#576) is not in mixedCase
Parameter usingOraclize.indexOf(string,string)._needle (dataset/contracts/transaction_order/26620.sol#576) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string,string)._a (dataset/contracts/transaction_order/26620.sol#603) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string,string)._b (dataset/contracts/transaction_order/26620.sol#603) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string,string)._c (dataset/contracts/transaction_order/26620.sol#603) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string,string)._d (dataset/contracts/transaction_order/26620.sol#603) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string,string)._e (dataset/contracts/transaction_order/26620.sol#603) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string)._a (dataset/contracts/transaction_order/26620.sol#620) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string)._b (dataset/contracts/transaction_order/26620.sol#620) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string)._c (dataset/contracts/transaction_order/26620.sol#620) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string,string)._d (dataset/contracts/transaction_order/26620.sol#620) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string)._a (dataset/contracts/transaction_order/26620.sol#624) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string)._b (dataset/contracts/transaction_order/26620.sol#624) is not in mixedCase
Parameter usingOraclize.strConcat(string,string,string)._c (dataset/contracts/transaction_order/26620.sol#624) is not in mixedCase
Parameter usingOraclize.strConcat(string,string)._a (dataset/contracts/transaction_order/26620.sol#628) is not in mixedCase
Parameter usingOraclize.strConcat(string,string)._b (dataset/contracts/transaction_order/26620.sol#628) is not in mixedCase
Parameter usingOraclize.parseInt(string)._a (dataset/contracts/transaction_order/26620.sol#633) is not in mixedCase
Parameter usingOraclize.parseInt(string,uint256)._a (dataset/contracts/transaction_order/26620.sol#638) is not in mixedCase
Parameter usingOraclize.parseInt(string,uint256)._b (dataset/contracts/transaction_order/26620.sol#638) is not in mixedCase
Function usingOraclize.oraclize_setNetworkName(string) (dataset/contracts/transaction_order/26620.sol#759-761) is not in mixedCase
Parameter usingOraclize.oraclize_setNetworkName(string)._network_name (dataset/contracts/transaction_order/26620.sol#759) is not in mixedCase
Function usingOraclize.oraclize_getNetworkName() (dataset/contracts/transaction_order/26620.sol#763-765) is not in mixedCase
Function usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256) (dataset/contracts/transaction_order/26620.sol#767-784) is not in mixedCase
Parameter usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256)._delay (dataset/contracts/transaction_order/26620.sol#767) is not in mixedCase
Parameter usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256)._nbytes (dataset/contracts/transaction_order/26620.sol#767) is not in mixedCase
Parameter usingOraclize.oraclize_newRandomDSQuery(uint256,uint256,uint256)._customGasLimit (dataset/contracts/transaction_order/26620.sol#767) is not in mixedCase
Function usingOraclize.oraclize_randomDS_setCommitment(bytes32,bytes32) (dataset/contracts/transaction_order/26620.sol#786-788) is not in mixedCase
Function usingOraclize.oraclize_randomDS_proofVerify__sessionKeyValidity(bytes,uint256) (dataset/contracts/transaction_order/26620.sol#821-854) is not in mixedCase
Function usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#866-874) is not in mixedCase
Parameter usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes)._queryId (dataset/contracts/transaction_order/26620.sol#866) is not in mixedCase
Parameter usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes)._result (dataset/contracts/transaction_order/26620.sol#866) is not in mixedCase
Parameter usingOraclize.oraclize_randomDS_proofVerify__returnCode(bytes32,string,bytes)._proof (dataset/contracts/transaction_order/26620.sol#866) is not in mixedCase
Parameter usingOraclize.matchBytes32Prefix(bytes32,bytes,uint256).n_random_bytes (dataset/contracts/transaction_order/26620.sol#876) is not in mixedCase
Function usingOraclize.oraclize_randomDS_proofVerify__main(bytes,bytes32,bytes,string) (dataset/contracts/transaction_order/26620.sol#886-926) is not in mixedCase
Parameter usingOraclize.oraclize_randomDS_proofVerify__main(bytes,bytes32,bytes,string).context_name (dataset/contracts/transaction_order/26620.sol#886) is not in mixedCase
Function usingOraclize.safer_ecrecover(bytes32,uint8,bytes32,bytes32) (dataset/contracts/transaction_order/26620.sol#956-981) is not in mixedCase
Constant usingOraclize.day (dataset/contracts/transaction_order/26620.sol#55) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.week (dataset/contracts/transaction_order/26620.sol#56) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.month (dataset/contracts/transaction_order/26620.sol#57) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofType_NONE (dataset/contracts/transaction_order/26620.sol#58) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofType_TLSNotary (dataset/contracts/transaction_order/26620.sol#59) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofType_Android (dataset/contracts/transaction_order/26620.sol#60) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofType_Ledger (dataset/contracts/transaction_order/26620.sol#61) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofType_Native (dataset/contracts/transaction_order/26620.sol#62) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.proofStorage_IPFS (dataset/contracts/transaction_order/26620.sol#63) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.networkID_auto (dataset/contracts/transaction_order/26620.sol#64) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.networkID_mainnet (dataset/contracts/transaction_order/26620.sol#65) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.networkID_testnet (dataset/contracts/transaction_order/26620.sol#66) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.networkID_morden (dataset/contracts/transaction_order/26620.sol#67) is not in UPPER_CASE_WITH_UNDERSCORES
Constant usingOraclize.networkID_consensys (dataset/contracts/transaction_order/26620.sol#68) is not in UPPER_CASE_WITH_UNDERSCORES
Variable usingOraclize.OAR (dataset/contracts/transaction_order/26620.sol#70) is not in mixedCase
Variable usingOraclize.oraclize_network_name (dataset/contracts/transaction_order/26620.sol#758) is not in mixedCase
Variable usingOraclize.oraclize_randomDS_args (dataset/contracts/transaction_order/26620.sol#790) is not in mixedCase
Variable usingOraclize.oraclize_randomDS_sessionKeysHashVerified (dataset/contracts/transaction_order/26620.sol#791) is not in mixedCase
Modifier usingOraclize.oraclize_randomDS_proofVerify(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#856-864) is not in mixedCase
Event Dice.LOG_NewBet(address,uint256,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1066) is not in CapWords
Event Dice.LOG_BetWon(address,uint256,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1067) is not in CapWords
Event Dice.LOG_BetLost(address,uint256,uint256,bytes32) (dataset/contracts/transaction_order/26620.sol#1068) is not in CapWords
Event Dice.LOG_FailedSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1069) is not in CapWords
Event Dice.LOG_ZeroSend() (dataset/contracts/transaction_order/26620.sol#1070) is not in CapWords
Event Dice.LOG_OwnerAddressChanged(address,address) (dataset/contracts/transaction_order/26620.sol#1071) is not in CapWords
Event Dice.LOG_GasLimitChanged(uint256,uint256) (dataset/contracts/transaction_order/26620.sol#1072) is not in CapWords
Event Dice.LOG_ValueIsTooBig() (dataset/contracts/transaction_order/26620.sol#1073) is not in CapWords
Event Dice.LOG_SuccessfulSend(address,uint256) (dataset/contracts/transaction_order/26620.sol#1074) is not in CapWords
Event Dice.LOG_IncreaseInvestment(uint256) (dataset/contracts/transaction_order/26620.sol#1075) is not in CapWords
Event Dice.LOG_Payout(address,uint256) (dataset/contracts/transaction_order/26620.sol#1076) is not in CapWords
Function Dice.__callback(bytes32,string,bytes) (dataset/contracts/transaction_order/26620.sol#1238-1249) is not in mixedCase
Constant Dice.edge (dataset/contracts/transaction_order/26620.sol#1029) is not in UPPER_CASE_WITH_UNDERSCORES
Constant Dice.maxWin (dataset/contracts/transaction_order/26620.sol#1030) is not in UPPER_CASE_WITH_UNDERSCORES
Constant Dice.minBet (dataset/contracts/transaction_order/26620.sol#1031) is not in UPPER_CASE_WITH_UNDERSCORES
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
usingOraclize.oraclize_query(string,string) (dataset/contracts/transaction_order/26620.sol#142-146) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#144)
usingOraclize.oraclize_query(uint256,string,string) (dataset/contracts/transaction_order/26620.sol#147-151) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#149)
usingOraclize.oraclize_query(string,string,string) (dataset/contracts/transaction_order/26620.sol#162-166) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#164)
usingOraclize.oraclize_query(uint256,string,string,string) (dataset/contracts/transaction_order/26620.sol#167-171) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#169)
usingOraclize.oraclize_query(string,string[]) (dataset/contracts/transaction_order/26620.sol#182-187) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#184)
usingOraclize.oraclize_query(uint256,string,string[]) (dataset/contracts/transaction_order/26620.sol#188-193) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#190)
usingOraclize.oraclize_query(string,bytes[]) (dataset/contracts/transaction_order/26620.sol#348-353) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#350)
usingOraclize.oraclize_query(uint256,string,bytes[]) (dataset/contracts/transaction_order/26620.sol#354-359) uses literals with too many digits:
	- price > 1000000000000000000 + tx.gasprice * 200000 (dataset/contracts/transaction_order/26620.sol#356)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#too-many-digits
INFO:Detectors:
usingOraclize.day (dataset/contracts/transaction_order/26620.sol#55) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.week (dataset/contracts/transaction_order/26620.sol#56) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.month (dataset/contracts/transaction_order/26620.sol#57) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofType_NONE (dataset/contracts/transaction_order/26620.sol#58) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofType_TLSNotary (dataset/contracts/transaction_order/26620.sol#59) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofType_Android (dataset/contracts/transaction_order/26620.sol#60) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofType_Ledger (dataset/contracts/transaction_order/26620.sol#61) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofType_Native (dataset/contracts/transaction_order/26620.sol#62) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.proofStorage_IPFS (dataset/contracts/transaction_order/26620.sol#63) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.networkID_mainnet (dataset/contracts/transaction_order/26620.sol#65) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.networkID_testnet (dataset/contracts/transaction_order/26620.sol#66) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.networkID_morden (dataset/contracts/transaction_order/26620.sol#67) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
usingOraclize.networkID_consensys (dataset/contracts/transaction_order/26620.sol#68) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
Dice.maxWin (dataset/contracts/transaction_order/26620.sol#1030) is never used in Dice (dataset/contracts/transaction_order/26620.sol#1027-1320)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#unused-state-variable
INFO:Detectors:
query(uint256,string,string) should be declared external:
	- OraclizeI.query(uint256,string,string) (dataset/contracts/transaction_order/26620.sol#37)
query_withGasLimit(uint256,string,string,uint256) should be declared external:
	- OraclizeI.query_withGasLimit(uint256,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#38)
query2(uint256,string,string,string) should be declared external:
	- OraclizeI.query2(uint256,string,string,string) (dataset/contracts/transaction_order/26620.sol#39)
query2_withGasLimit(uint256,string,string,string,uint256) should be declared external:
	- OraclizeI.query2_withGasLimit(uint256,string,string,string,uint256) (dataset/contracts/transaction_order/26620.sol#40)
queryN(uint256,string,bytes) should be declared external:
	- OraclizeI.queryN(uint256,string,bytes) (dataset/contracts/transaction_order/26620.sol#41)
queryN_withGasLimit(uint256,string,bytes,uint256) should be declared external:
	- OraclizeI.queryN_withGasLimit(uint256,string,bytes,uint256) (dataset/contracts/transaction_order/26620.sol#42)
getPrice(string) should be declared external:
	- OraclizeI.getPrice(string) (dataset/contracts/transaction_order/26620.sol#43)
getPrice(string,uint256) should be declared external:
	- OraclizeI.getPrice(string,uint256) (dataset/contracts/transaction_order/26620.sol#44)
useCoupon(string) should be declared external:
	- OraclizeI.useCoupon(string) (dataset/contracts/transaction_order/26620.sol#45)
__callback(bytes32,string) should be declared external:
	- usingOraclize.__callback(bytes32,string) (dataset/contracts/transaction_order/26620.sol#124-126)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26620.sol analyzed (4 contracts with 100 detectors), 354 result(s) found
