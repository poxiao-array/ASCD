'solc --version' running
'solc ./dataset/contracts/transaction_order/17067.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
JoyArt.purchase(uint256) (dataset/contracts/transaction_order/17067.sol#261-294) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(sellingPrice.sub(contractCut)) (dataset/contracts/transaction_order/17067.sol#288)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
JoyArt._isContract(address) (dataset/contracts/transaction_order/17067.sol#394-398) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
AccessControl.setCEO(address) (dataset/contracts/transaction_order/17067.sol#39-42) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/17067.sol#41) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/17067.sol#41) 
AccessControl.setCOO(address) (dataset/contracts/transaction_order/17067.sol#46-49) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/17067.sol#48) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/17067.sol#48) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
JoyArt._isContract(address) (dataset/contracts/transaction_order/17067.sol#394-398) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/17067.sol#396-397)
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
	- ^0.4.18 (dataset/contracts/transaction_order/17067.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessControl.setCEO(address)._newCEO (dataset/contracts/transaction_order/17067.sol#39) is not in mixedCase
Parameter AccessControl.setCOO(address)._newCOO (dataset/contracts/transaction_order/17067.sol#46) is not in mixedCase
Parameter JoyArt.createToken(string,address,uint256)._name (dataset/contracts/transaction_order/17067.sol#171) is not in mixedCase
Parameter JoyArt.createToken(string,address,uint256)._owner (dataset/contracts/transaction_order/17067.sol#171) is not in mixedCase
Parameter JoyArt.createToken(string,address,uint256)._price (dataset/contracts/transaction_order/17067.sol#171) is not in mixedCase
Parameter JoyArt.createToken(string)._name (dataset/contracts/transaction_order/17067.sol#178) is not in mixedCase
Parameter JoyArt.getToken(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#195) is not in mixedCase
Parameter JoyArt.tokensOf(address)._owner (dataset/contracts/transaction_order/17067.sol#226) is not in mixedCase
Parameter JoyArt.withdrawBalance(address,uint256)._to (dataset/contracts/transaction_order/17067.sol#245) is not in mixedCase
Parameter JoyArt.withdrawBalance(address,uint256)._amount (dataset/contracts/transaction_order/17067.sol#245) is not in mixedCase
Parameter JoyArt.purchase(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#261) is not in mixedCase
Parameter JoyArt.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#296) is not in mixedCase
Parameter JoyArt.nextPriceOf(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#305) is not in mixedCase
Parameter JoyArt.balanceOf(address)._owner (dataset/contracts/transaction_order/17067.sol#328) is not in mixedCase
Parameter JoyArt.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#332) is not in mixedCase
Parameter JoyArt.approve(address,uint256)._to (dataset/contracts/transaction_order/17067.sol#336) is not in mixedCase
Parameter JoyArt.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#336) is not in mixedCase
Parameter JoyArt.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/17067.sol#342) is not in mixedCase
Parameter JoyArt.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/17067.sol#342) is not in mixedCase
Parameter JoyArt.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#342) is not in mixedCase
Parameter JoyArt.transfer(address,uint256)._to (dataset/contracts/transaction_order/17067.sol#350) is not in mixedCase
Parameter JoyArt.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#350) is not in mixedCase
Parameter JoyArt.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/17067.sol#361) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
JoyArt.increaseLimit1 (dataset/contracts/transaction_order/17067.sol#300) should be constant 
JoyArt.increaseLimit2 (dataset/contracts/transaction_order/17067.sol#301) should be constant 
JoyArt.increaseLimit3 (dataset/contracts/transaction_order/17067.sol#302) should be constant 
JoyArt.increaseLimit4 (dataset/contracts/transaction_order/17067.sol#303) should be constant 
JoyArt.startingPrice (dataset/contracts/transaction_order/17067.sol#163) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createToken(string,address,uint256) should be declared external:
	- JoyArt.createToken(string,address,uint256) (dataset/contracts/transaction_order/17067.sol#171-176)
createToken(string) should be declared external:
	- JoyArt.createToken(string) (dataset/contracts/transaction_order/17067.sol#178-181)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/17067.sol analyzed (5 contracts with 100 detectors), 37 result(s) found
