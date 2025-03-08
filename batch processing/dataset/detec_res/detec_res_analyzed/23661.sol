'solc --version' running
'solc ./dataset/contracts/transaction_order/23661.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23661.sol:
./dataset/contracts/transaction_order/23661.sol:488:32: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
                               ^---------------^
./dataset/contracts/transaction_order/23661.sol:495:34: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function getVideoGameItemOwner(uint _videoGameItemId) public view returns(address) {
                                 ^-------------------^
./dataset/contracts/transaction_order/23661.sol:488:5: Warning: Function state mutability can be restricted to pure
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/23661.sol:495:3: Warning: Function state mutability can be restricted to pure
  function getVideoGameItemOwner(uint _videoGameItemId) public view returns(address) {
  ^
Spanning multiple lines.

INFO:Detectors:
PowZoneToken.purchase(uint256) (dataset/contracts/transaction_order/23661.sol#208-251) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(payment) (dataset/contracts/transaction_order/23661.sol#245)
PowZoneToken._transferDivs(uint256,uint256,uint256) (dataset/contracts/transaction_order/23661.sol#254-261) sends eth to arbitrary user
	Dangerous calls:
	- gameOwner.transfer(_gameOwnerPayment) (dataset/contracts/transaction_order/23661.sol#259)
	- gameItemOwner.transfer(_gameItemOwnerPayment) (dataset/contracts/transaction_order/23661.sol#260)
PowZoneToken._payout(address) (dataset/contracts/transaction_order/23661.sol#406-412) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(this.balance) (dataset/contracts/transaction_order/23661.sol#408)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/23661.sol#410)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
PowZoneToken.setCEO(address) (dataset/contracts/transaction_order/23661.sol#269-273) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23661.sol#272) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23661.sol#272) 
PowZoneToken.setCOO(address) (dataset/contracts/transaction_order/23661.sol#277-281) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23661.sol#280) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23661.sol#280) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Version constraint ^0.4.18 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
	- DirtyBytesArrayToStorage
	- ABIDecodeTwoDimensionalArrayMemory
	- KeccakCaching
	- EmptyByteArrayCopy
	- DynamicArrayCleanup
	- ImplicitConstructorCallvalueCheck
	- TupleAssignmentMultiStackSlotComponents
	- MemoryArrayCreationOverflow
	- privateCanBeOverridden
	- SignedArrayStorageCopy
	- ABIEncoderV2StorageArrayWithMultiSlotElement
	- DynamicConstructorArgumentsClippedABIV2
	- UninitializedFunctionPointerInConstructor_0.4.x
	- IncorrectEventSignatureInLibraries_0.4.x
	- ExpExponentCleanup
	- EventStructWrongData
	- NestedArrayFunctionCallDecoder.
It is used by:
	- ^0.4.18 (dataset/contracts/transaction_order/23661.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter PowZoneToken.approve(address,uint256)._to (dataset/contracts/transaction_order/23661.sol#124) is not in mixedCase
Parameter PowZoneToken.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#125) is not in mixedCase
Parameter PowZoneToken.balanceOf(address)._owner (dataset/contracts/transaction_order/23661.sol#138) is not in mixedCase
Parameter PowZoneToken.createPromoPow(address,string,uint256,uint256,uint256)._owner (dataset/contracts/transaction_order/23661.sol#143) is not in mixedCase
Parameter PowZoneToken.createPromoPow(address,string,uint256,uint256,uint256)._name (dataset/contracts/transaction_order/23661.sol#143) is not in mixedCase
Parameter PowZoneToken.createPromoPow(address,string,uint256,uint256,uint256)._price (dataset/contracts/transaction_order/23661.sol#143) is not in mixedCase
Parameter PowZoneToken.createPromoPow(address,string,uint256,uint256,uint256)._gameId (dataset/contracts/transaction_order/23661.sol#143) is not in mixedCase
Parameter PowZoneToken.createPromoPow(address,string,uint256,uint256,uint256)._gameItemId (dataset/contracts/transaction_order/23661.sol#143) is not in mixedCase
Parameter PowZoneToken.createContractPow(string,uint256,uint256)._name (dataset/contracts/transaction_order/23661.sol#159) is not in mixedCase
Parameter PowZoneToken.createContractPow(string,uint256,uint256)._gameId (dataset/contracts/transaction_order/23661.sol#159) is not in mixedCase
Parameter PowZoneToken.createContractPow(string,uint256,uint256)._gameItemId (dataset/contracts/transaction_order/23661.sol#159) is not in mixedCase
Parameter PowZoneToken.getPow(uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#165) is not in mixedCase
Parameter PowZoneToken.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#194) is not in mixedCase
Parameter PowZoneToken.payout(address)._to (dataset/contracts/transaction_order/23661.sol#203) is not in mixedCase
Parameter PowZoneToken.purchase(uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#208) is not in mixedCase
Parameter PowZoneToken.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#263) is not in mixedCase
Parameter PowZoneToken.setCEO(address)._newCEO (dataset/contracts/transaction_order/23661.sol#269) is not in mixedCase
Parameter PowZoneToken.setCOO(address)._newCOO (dataset/contracts/transaction_order/23661.sol#277) is not in mixedCase
Parameter PowZoneToken.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#291) is not in mixedCase
Parameter PowZoneToken.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/23661.sol#309) is not in mixedCase
Parameter PowZoneToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/23661.sol#341) is not in mixedCase
Parameter PowZoneToken.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#342) is not in mixedCase
Parameter PowZoneToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23661.sol#356) is not in mixedCase
Parameter PowZoneToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23661.sol#357) is not in mixedCase
Parameter PowZoneToken.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/23661.sol#358) is not in mixedCase
Parameter PowZoneToken.modifyPowPrice(uint256,uint256)._powId (dataset/contracts/transaction_order/23661.sol#417) is not in mixedCase
Parameter PowZoneToken.modifyPowPrice(uint256,uint256)._newPrice (dataset/contracts/transaction_order/23661.sol#417) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
PowZoneToken.cryptoVideoGameItems (dataset/contracts/transaction_order/23661.sol#32) should be constant 
PowZoneToken.cryptoVideoGames (dataset/contracts/transaction_order/23661.sol#31) should be constant 
PowZoneToken.firstStepLimit (dataset/contracts/transaction_order/23661.sol#53) should be constant 
PowZoneToken.secondStepLimit (dataset/contracts/transaction_order/23661.sol#54) should be constant 
PowZoneToken.startingPrice (dataset/contracts/transaction_order/23661.sol#52) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createContractPow(string,uint256,uint256) should be declared external:
	- PowZoneToken.createContractPow(string,uint256,uint256) (dataset/contracts/transaction_order/23661.sol#159-161)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23661.sol analyzed (5 contracts with 100 detectors), 40 result(s) found
