'solc --version' running
'solc ./dataset/contracts/transaction_order/26017.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoArtsToken.purchase(uint256) (dataset/contracts/transaction_order/26017.sol#285-326) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(sellingPrice.sub(contractCut)) (dataset/contracts/transaction_order/26017.sol#319)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CryptoArtsToken._isContract(address) (dataset/contracts/transaction_order/26017.sol#442-446) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
AccessControl.setCEO(address) (dataset/contracts/transaction_order/26017.sol#39-42) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/26017.sol#41) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/26017.sol#41) 
AccessControl.setCOO(address) (dataset/contracts/transaction_order/26017.sol#46-49) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/26017.sol#48) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/26017.sol#48) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoArtsToken._isContract(address) (dataset/contracts/transaction_order/26017.sol#442-446) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/26017.sol#444-445)
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
	- ^0.4.18 (dataset/contracts/transaction_order/26017.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessControl.setCEO(address)._newCEO (dataset/contracts/transaction_order/26017.sol#39) is not in mixedCase
Parameter AccessControl.setCOO(address)._newCOO (dataset/contracts/transaction_order/26017.sol#46) is not in mixedCase
Parameter CryptoArtsToken.createToken(string,address,uint256)._name (dataset/contracts/transaction_order/26017.sol#191) is not in mixedCase
Parameter CryptoArtsToken.createToken(string,address,uint256)._owner (dataset/contracts/transaction_order/26017.sol#191) is not in mixedCase
Parameter CryptoArtsToken.createToken(string,address,uint256)._price (dataset/contracts/transaction_order/26017.sol#191) is not in mixedCase
Parameter CryptoArtsToken.createToken(string)._name (dataset/contracts/transaction_order/26017.sol#199) is not in mixedCase
Parameter CryptoArtsToken.getToken(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#216) is not in mixedCase
Parameter CryptoArtsToken.tokensOf(address)._owner (dataset/contracts/transaction_order/26017.sol#247) is not in mixedCase
Parameter CryptoArtsToken.withdrawBalance(address,uint256)._to (dataset/contracts/transaction_order/26017.sol#270) is not in mixedCase
Parameter CryptoArtsToken.withdrawBalance(address,uint256)._amount (dataset/contracts/transaction_order/26017.sol#270) is not in mixedCase
Parameter CryptoArtsToken.purchase(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#285) is not in mixedCase
Parameter CryptoArtsToken.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#328) is not in mixedCase
Parameter CryptoArtsToken.nextPriceOf(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#336) is not in mixedCase
Parameter CryptoArtsToken.balanceOf(address)._owner (dataset/contracts/transaction_order/26017.sol#360) is not in mixedCase
Parameter CryptoArtsToken.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#364) is not in mixedCase
Parameter CryptoArtsToken.approve(address,uint256)._to (dataset/contracts/transaction_order/26017.sol#369) is not in mixedCase
Parameter CryptoArtsToken.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#369) is not in mixedCase
Parameter CryptoArtsToken.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/26017.sol#377) is not in mixedCase
Parameter CryptoArtsToken.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/26017.sol#377) is not in mixedCase
Parameter CryptoArtsToken.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#377) is not in mixedCase
Parameter CryptoArtsToken.transfer(address,uint256)._to (dataset/contracts/transaction_order/26017.sol#385) is not in mixedCase
Parameter CryptoArtsToken.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#385) is not in mixedCase
Parameter CryptoArtsToken.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/26017.sol#397) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CryptoArtsToken.increaseLimit1 (dataset/contracts/transaction_order/26017.sol#332) should be constant 
CryptoArtsToken.increaseLimit2 (dataset/contracts/transaction_order/26017.sol#333) should be constant 
CryptoArtsToken.increaseLimit3 (dataset/contracts/transaction_order/26017.sol#334) should be constant 
CryptoArtsToken.startingPrice (dataset/contracts/transaction_order/26017.sol#182) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createToken(string,address,uint256) should be declared external:
	- CryptoArtsToken.createToken(string,address,uint256) (dataset/contracts/transaction_order/26017.sol#191-196)
createToken(string) should be declared external:
	- CryptoArtsToken.createToken(string) (dataset/contracts/transaction_order/26017.sol#199-201)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/26017.sol analyzed (5 contracts with 100 detectors), 36 result(s) found
