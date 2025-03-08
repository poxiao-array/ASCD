'solc --version' running
'solc ./dataset/contracts/transaction_order/23505.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
Compilation warnings/errors on ./dataset/contracts/transaction_order/23505.sol:
./dataset/contracts/transaction_order/23505.sol:494:32: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
                               ^---------------^
./dataset/contracts/transaction_order/23505.sol:501:34: Warning: Unused function parameter. Remove or comment out the variable name to silence this warning.
  function getVideoGameItemOwner(uint _videoGameItemId) public view returns(address) {
                                 ^-------------------^
./dataset/contracts/transaction_order/23505.sol:494:5: Warning: Function state mutability can be restricted to pure
    function getVideoGameOwner(uint _videoGameId) public view returns(address) {
    ^
Spanning multiple lines.
./dataset/contracts/transaction_order/23505.sol:501:3: Warning: Function state mutability can be restricted to pure
  function getVideoGameItemOwner(uint _videoGameItemId) public view returns(address) {
  ^
Spanning multiple lines.

INFO:Detectors:
PokemonPow.purchase(uint256) (dataset/contracts/transaction_order/23505.sol#211-254) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(payment) (dataset/contracts/transaction_order/23505.sol#248)
PokemonPow._transferDivs(uint256,uint256,uint256) (dataset/contracts/transaction_order/23505.sol#257-266) sends eth to arbitrary user
	Dangerous calls:
	- gameOwner.transfer(_gameOwnerPayment) (dataset/contracts/transaction_order/23505.sol#263)
	- gameItem1Owner.transfer(_gameItemOwnerPayment) (dataset/contracts/transaction_order/23505.sol#264)
	- gameItem2Owner.transfer(_gameItemOwnerPayment) (dataset/contracts/transaction_order/23505.sol#265)
PokemonPow._payout(address) (dataset/contracts/transaction_order/23505.sol#412-418) sends eth to arbitrary user
	Dangerous calls:
	- ceoAddress.transfer(this.balance) (dataset/contracts/transaction_order/23505.sol#414)
	- _to.transfer(this.balance) (dataset/contracts/transaction_order/23505.sol#416)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
PokemonPow.setCEO(address) (dataset/contracts/transaction_order/23505.sol#274-278) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23505.sol#277) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23505.sol#277) 
PokemonPow.setCOO(address) (dataset/contracts/transaction_order/23505.sol#282-286) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23505.sol#285) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23505.sol#285) 
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
	- ^0.4.18 (dataset/contracts/transaction_order/23505.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter PokemonPow.approve(address,uint256)._to (dataset/contracts/transaction_order/23505.sol#125) is not in mixedCase
Parameter PokemonPow.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#126) is not in mixedCase
Parameter PokemonPow.balanceOf(address)._owner (dataset/contracts/transaction_order/23505.sol#139) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._owner (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._name (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._price (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._gameId (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._gameItemId1 (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createPromoPow(address,string,uint256,uint256,uint256,uint256)._gameItemId2 (dataset/contracts/transaction_order/23505.sol#144) is not in mixedCase
Parameter PokemonPow.createContractPow(string,uint256,uint256,uint256)._name (dataset/contracts/transaction_order/23505.sol#160) is not in mixedCase
Parameter PokemonPow.createContractPow(string,uint256,uint256,uint256)._gameId (dataset/contracts/transaction_order/23505.sol#160) is not in mixedCase
Parameter PokemonPow.createContractPow(string,uint256,uint256,uint256)._gameItemId1 (dataset/contracts/transaction_order/23505.sol#160) is not in mixedCase
Parameter PokemonPow.createContractPow(string,uint256,uint256,uint256)._gameItemId2 (dataset/contracts/transaction_order/23505.sol#160) is not in mixedCase
Parameter PokemonPow.getPow(uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#166) is not in mixedCase
Parameter PokemonPow.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#197) is not in mixedCase
Parameter PokemonPow.payout(address)._to (dataset/contracts/transaction_order/23505.sol#206) is not in mixedCase
Parameter PokemonPow.purchase(uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#211) is not in mixedCase
Parameter PokemonPow.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#268) is not in mixedCase
Parameter PokemonPow.setCEO(address)._newCEO (dataset/contracts/transaction_order/23505.sol#274) is not in mixedCase
Parameter PokemonPow.setCOO(address)._newCOO (dataset/contracts/transaction_order/23505.sol#282) is not in mixedCase
Parameter PokemonPow.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#296) is not in mixedCase
Parameter PokemonPow.tokensOfOwner(address)._owner (dataset/contracts/transaction_order/23505.sol#314) is not in mixedCase
Parameter PokemonPow.transfer(address,uint256)._to (dataset/contracts/transaction_order/23505.sol#346) is not in mixedCase
Parameter PokemonPow.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#347) is not in mixedCase
Parameter PokemonPow.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23505.sol#361) is not in mixedCase
Parameter PokemonPow.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23505.sol#362) is not in mixedCase
Parameter PokemonPow.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/23505.sol#363) is not in mixedCase
Parameter PokemonPow.modifyPowPrice(uint256,uint256)._powId (dataset/contracts/transaction_order/23505.sol#423) is not in mixedCase
Parameter PokemonPow.modifyPowPrice(uint256,uint256)._newPrice (dataset/contracts/transaction_order/23505.sol#423) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
PokemonPow.cryptoVideoGameItems (dataset/contracts/transaction_order/23505.sol#32) should be constant 
PokemonPow.cryptoVideoGames (dataset/contracts/transaction_order/23505.sol#31) should be constant 
PokemonPow.firstStepLimit (dataset/contracts/transaction_order/23505.sol#53) should be constant 
PokemonPow.secondStepLimit (dataset/contracts/transaction_order/23505.sol#54) should be constant 
PokemonPow.startingPrice (dataset/contracts/transaction_order/23505.sol#52) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createContractPow(string,uint256,uint256,uint256) should be declared external:
	- PokemonPow.createContractPow(string,uint256,uint256,uint256) (dataset/contracts/transaction_order/23505.sol#160-162)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23505.sol analyzed (5 contracts with 100 detectors), 42 result(s) found
