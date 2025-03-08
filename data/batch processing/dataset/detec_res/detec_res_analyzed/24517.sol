'solc --version' running
'solc ./dataset/contracts/transaction_order/24517.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoAdrian.purchase(uint256) (dataset/contracts/transaction_order/24517.sol#290-331) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(sellingPrice.sub(contractCut)) (dataset/contracts/transaction_order/24517.sol#324)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CryptoAdrian._isContract(address) (dataset/contracts/transaction_order/24517.sol#449-453) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
AccessControl.setCEO(address) (dataset/contracts/transaction_order/24517.sol#40-43) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/24517.sol#42) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/24517.sol#42) 
AccessControl.setCOO(address) (dataset/contracts/transaction_order/24517.sol#47-50) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/24517.sol#49) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/24517.sol#49) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoAdrian._isContract(address) (dataset/contracts/transaction_order/24517.sol#449-453) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/24517.sol#451-452)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
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
	- ^0.4.18 (dataset/contracts/transaction_order/24517.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessControl.setCEO(address)._newCEO (dataset/contracts/transaction_order/24517.sol#40) is not in mixedCase
Parameter AccessControl.setCOO(address)._newCOO (dataset/contracts/transaction_order/24517.sol#47) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32,address,uint256)._name (dataset/contracts/transaction_order/24517.sol#193) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32,address,uint256)._buffness (dataset/contracts/transaction_order/24517.sol#193) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32,address,uint256)._owner (dataset/contracts/transaction_order/24517.sol#193) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32,address,uint256)._price (dataset/contracts/transaction_order/24517.sol#193) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32)._name (dataset/contracts/transaction_order/24517.sol#201) is not in mixedCase
Parameter CryptoAdrian.createToken(string,uint32)._buffness (dataset/contracts/transaction_order/24517.sol#201) is not in mixedCase
Parameter CryptoAdrian.getToken(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#219) is not in mixedCase
Parameter CryptoAdrian.tokensOf(address)._owner (dataset/contracts/transaction_order/24517.sol#252) is not in mixedCase
Parameter CryptoAdrian.withdrawBalance(address,uint256)._to (dataset/contracts/transaction_order/24517.sol#275) is not in mixedCase
Parameter CryptoAdrian.withdrawBalance(address,uint256)._amount (dataset/contracts/transaction_order/24517.sol#275) is not in mixedCase
Parameter CryptoAdrian.purchase(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#290) is not in mixedCase
Parameter CryptoAdrian.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#333) is not in mixedCase
Parameter CryptoAdrian.nextPriceOf(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#342) is not in mixedCase
Parameter CryptoAdrian.balanceOf(address)._owner (dataset/contracts/transaction_order/24517.sol#368) is not in mixedCase
Parameter CryptoAdrian.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#372) is not in mixedCase
Parameter CryptoAdrian.approve(address,uint256)._to (dataset/contracts/transaction_order/24517.sol#377) is not in mixedCase
Parameter CryptoAdrian.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#377) is not in mixedCase
Parameter CryptoAdrian.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/24517.sol#385) is not in mixedCase
Parameter CryptoAdrian.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/24517.sol#385) is not in mixedCase
Parameter CryptoAdrian.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#385) is not in mixedCase
Parameter CryptoAdrian.transfer(address,uint256)._to (dataset/contracts/transaction_order/24517.sol#393) is not in mixedCase
Parameter CryptoAdrian.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#393) is not in mixedCase
Parameter CryptoAdrian.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/24517.sol#405) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CryptoAdrian.increaseLimit1 (dataset/contracts/transaction_order/24517.sol#337) should be constant 
CryptoAdrian.increaseLimit2 (dataset/contracts/transaction_order/24517.sol#338) should be constant 
CryptoAdrian.increaseLimit3 (dataset/contracts/transaction_order/24517.sol#339) should be constant 
CryptoAdrian.increaseLimit4 (dataset/contracts/transaction_order/24517.sol#340) should be constant 
CryptoAdrian.startingPrice (dataset/contracts/transaction_order/24517.sol#184) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createToken(string,uint32,address,uint256) should be declared external:
	- CryptoAdrian.createToken(string,uint32,address,uint256) (dataset/contracts/transaction_order/24517.sol#193-198)
createToken(string,uint32) should be declared external:
	- CryptoAdrian.createToken(string,uint32) (dataset/contracts/transaction_order/24517.sol#201-203)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/24517.sol analyzed (5 contracts with 100 detectors), 39 result(s) found
