'solc --version' running
'solc ./dataset/contracts/transaction_order/24959.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoKittenToken.purchase(uint256) (dataset/contracts/transaction_order/24959.sol#286-327) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(sellingPrice.sub(contractCut)) (dataset/contracts/transaction_order/24959.sol#320)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CryptoKittenToken._isContract(address) (dataset/contracts/transaction_order/24959.sol#445-449) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
AccessControl.setCEO(address) (dataset/contracts/transaction_order/24959.sol#40-43) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/24959.sol#42) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/24959.sol#42) 
AccessControl.setCOO(address) (dataset/contracts/transaction_order/24959.sol#47-50) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/24959.sol#49) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/24959.sol#49) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoKittenToken._isContract(address) (dataset/contracts/transaction_order/24959.sol#445-449) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/24959.sol#447-448)
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
	- ^0.4.18 (dataset/contracts/transaction_order/24959.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessControl.setCEO(address)._newCEO (dataset/contracts/transaction_order/24959.sol#40) is not in mixedCase
Parameter AccessControl.setCOO(address)._newCOO (dataset/contracts/transaction_order/24959.sol#47) is not in mixedCase
Parameter CryptoKittenToken.createToken(string,address,uint256)._name (dataset/contracts/transaction_order/24959.sol#192) is not in mixedCase
Parameter CryptoKittenToken.createToken(string,address,uint256)._owner (dataset/contracts/transaction_order/24959.sol#192) is not in mixedCase
Parameter CryptoKittenToken.createToken(string,address,uint256)._price (dataset/contracts/transaction_order/24959.sol#192) is not in mixedCase
Parameter CryptoKittenToken.createToken(string)._name (dataset/contracts/transaction_order/24959.sol#200) is not in mixedCase
Parameter CryptoKittenToken.getToken(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#217) is not in mixedCase
Parameter CryptoKittenToken.tokensOf(address)._owner (dataset/contracts/transaction_order/24959.sol#248) is not in mixedCase
Parameter CryptoKittenToken.withdrawBalance(address,uint256)._to (dataset/contracts/transaction_order/24959.sol#271) is not in mixedCase
Parameter CryptoKittenToken.withdrawBalance(address,uint256)._amount (dataset/contracts/transaction_order/24959.sol#271) is not in mixedCase
Parameter CryptoKittenToken.purchase(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#286) is not in mixedCase
Parameter CryptoKittenToken.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#329) is not in mixedCase
Parameter CryptoKittenToken.nextPriceOf(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#338) is not in mixedCase
Parameter CryptoKittenToken.balanceOf(address)._owner (dataset/contracts/transaction_order/24959.sol#364) is not in mixedCase
Parameter CryptoKittenToken.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#368) is not in mixedCase
Parameter CryptoKittenToken.approve(address,uint256)._to (dataset/contracts/transaction_order/24959.sol#373) is not in mixedCase
Parameter CryptoKittenToken.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#373) is not in mixedCase
Parameter CryptoKittenToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/24959.sol#381) is not in mixedCase
Parameter CryptoKittenToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/24959.sol#381) is not in mixedCase
Parameter CryptoKittenToken.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#381) is not in mixedCase
Parameter CryptoKittenToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/24959.sol#389) is not in mixedCase
Parameter CryptoKittenToken.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#389) is not in mixedCase
Parameter CryptoKittenToken.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/24959.sol#401) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CryptoKittenToken.increaseLimit1 (dataset/contracts/transaction_order/24959.sol#333) should be constant 
CryptoKittenToken.increaseLimit2 (dataset/contracts/transaction_order/24959.sol#334) should be constant 
CryptoKittenToken.increaseLimit3 (dataset/contracts/transaction_order/24959.sol#335) should be constant 
CryptoKittenToken.increaseLimit4 (dataset/contracts/transaction_order/24959.sol#336) should be constant 
CryptoKittenToken.startingPrice (dataset/contracts/transaction_order/24959.sol#183) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createToken(string,address,uint256) should be declared external:
	- CryptoKittenToken.createToken(string,address,uint256) (dataset/contracts/transaction_order/24959.sol#192-197)
createToken(string) should be declared external:
	- CryptoKittenToken.createToken(string) (dataset/contracts/transaction_order/24959.sol#200-202)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/24959.sol analyzed (5 contracts with 100 detectors), 37 result(s) found
