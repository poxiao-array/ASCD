'solc --version' running
'solc ./dataset/contracts/transaction_order/23137.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23137.sol:
./dataset/contracts/transaction_order/23137.sol:31:30: Warning: This looks like an address but has an invalid checksum. If this is not used as an address, please prepend '00'.
  address cryptoVideoGames = 0xdec14d8f4da25108fd0d32bf2decd9538564d069; 
                             ^----------------------------------------^
./dataset/contracts/transaction_order/23137.sol:470:32: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
                               ^---------------^
./dataset/contracts/transaction_order/23137.sol:470:5: Warning: Function state mutability can be restricted to pure
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
    ^
Spanning multiple lines.

INFO:Detectors:
GameItemNew.purchase(uint256) (dataset/contracts/transaction_order/23137.sol#202-236) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(payment) (dataset/contracts/transaction_order/23137.sol#230)
GameItemNew._transferDivs(uint256,uint256,uint256) (dataset/contracts/transaction_order/23137.sol#239-244) sends eth to arbitrary user
	Dangerous calls:
	- gameOwner.transfer(_gameOwnerPayment) (dataset/contracts/transaction_order/23137.sol#242)
	- ceoAddress.transfer(_devFees) (dataset/contracts/transaction_order/23137.sol#243)
GameItemNew._payout(address) (dataset/contracts/transaction_order/23137.sol#388-394) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(this.balance) (dataset/contracts/transaction_order/23137.sol#390)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/23137.sol#392)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
GameItemNew.setCEO(address) (dataset/contracts/transaction_order/23137.sol#252-256) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23137.sol#255) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23137.sol#255) 
GameItemNew.setCOO(address) (dataset/contracts/transaction_order/23137.sol#260-264) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23137.sol#263) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23137.sol#263) 
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
	- ^0.4.18 (dataset/contracts/transaction_order/23137.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter GameItemNew.approve(address,uint256)._to (dataset/contracts/transaction_order/23137.sol#120) is not in mixedCase
Parameter GameItemNew.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#121) is not in mixedCase
Parameter GameItemNew.balanceOf(address)._owner (dataset/contracts/transaction_order/23137.sol#134) is not in mixedCase
Parameter GameItemNew.createPromoGameItem(address,string,uint256,uint256)._owner (dataset/contracts/transaction_order/23137.sol#139) is not in mixedCase
Parameter GameItemNew.createPromoGameItem(address,string,uint256,uint256)._name (dataset/contracts/transaction_order/23137.sol#139) is not in mixedCase
Parameter GameItemNew.createPromoGameItem(address,string,uint256,uint256)._price (dataset/contracts/transaction_order/23137.sol#139) is not in mixedCase
Parameter GameItemNew.createPromoGameItem(address,string,uint256,uint256)._gameId (dataset/contracts/transaction_order/23137.sol#139) is not in mixedCase
Parameter GameItemNew.createContractGameItem(string,uint256)._name (dataset/contracts/transaction_order/23137.sol#155) is not in mixedCase
Parameter GameItemNew.createContractGameItem(string,uint256)._gameId (dataset/contracts/transaction_order/23137.sol#155) is not in mixedCase
Parameter GameItemNew.getGameItem(uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#161) is not in mixedCase
Parameter GameItemNew.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#188) is not in mixedCase
Parameter GameItemNew.payout(address)._to (dataset/contracts/transaction_order/23137.sol#197) is not in mixedCase
Parameter GameItemNew.purchase(uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#202) is not in mixedCase
Parameter GameItemNew.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#246) is not in mixedCase
Parameter GameItemNew.setCEO(address)._newCEO (dataset/contracts/transaction_order/23137.sol#252) is not in mixedCase
Parameter GameItemNew.setCOO(address)._newCOO (dataset/contracts/transaction_order/23137.sol#260) is not in mixedCase
Parameter GameItemNew.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#274) is not in mixedCase
Parameter GameItemNew.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/23137.sol#292) is not in mixedCase
Parameter GameItemNew.transfer(address,uint256)._to (dataset/contracts/transaction_order/23137.sol#324) is not in mixedCase
Parameter GameItemNew.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#325) is not in mixedCase
Parameter GameItemNew.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23137.sol#339) is not in mixedCase
Parameter GameItemNew.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23137.sol#340) is not in mixedCase
Parameter GameItemNew.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/23137.sol#341) is not in mixedCase
Parameter GameItemNew.modifyGameItemPrice(uint256,uint256)._gameItemId (dataset/contracts/transaction_order/23137.sol#399) is not in mixedCase
Parameter GameItemNew.modifyGameItemPrice(uint256,uint256)._newPrice (dataset/contracts/transaction_order/23137.sol#399) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
GameItemNew.cryptoVideoGames (dataset/contracts/transaction_order/23137.sol#31) should be constant 
GameItemNew.startingPrice (dataset/contracts/transaction_order/23137.sol#51) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createContractGameItem(string,uint256) should be declared external:
	- GameItemNew.createContractGameItem(string,uint256) (dataset/contracts/transaction_order/23137.sol#155-157)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23137.sol analyzed (4 contracts with 100 detectors), 35 result(s) found
