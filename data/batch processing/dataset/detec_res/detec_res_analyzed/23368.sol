'solc --version' running
'solc ./dataset/contracts/transaction_order/23368.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
CryptoDoggies.purchase(uint256) (dataset/contracts/transaction_order/23368.sol#274-308) sends eth to arbitrary user
	Dangerous calls:
	- oldOwner.transfer(sellingPrice.sub(contractCut)) (dataset/contracts/transaction_order/23368.sol#302)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#functions-that-send-ether-to-arbitrary-destinations
INFO:Detectors:
CryptoDoggies._isContract(address) (dataset/contracts/transaction_order/23368.sol#408-412) is declared view but contains assembly code
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#constant-functions-using-assembly-code
INFO:Detectors:
AccessControl.setCEO(address) (dataset/contracts/transaction_order/23368.sol#40-43) should emit an event for: 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23368.sol#42) 
	- ceoAddress = _newCEO (dataset/contracts/transaction_order/23368.sol#42) 
AccessControl.setCOO(address) (dataset/contracts/transaction_order/23368.sol#47-50) should emit an event for: 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23368.sol#49) 
	- cooAddress = _newCOO (dataset/contracts/transaction_order/23368.sol#49) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
CryptoDoggies._isContract(address) (dataset/contracts/transaction_order/23368.sol#408-412) uses assembly
	- INLINE ASM (dataset/contracts/transaction_order/23368.sol#410-411)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#assembly-usage
INFO:Detectors:
Deprecated standard detected hashVal = bytes32(block.blockhash(lastBlockNumber)) (dataset/contracts/transaction_order/23368.sol#190):
	- Usage of "block.blockhash()" should be replaced with "blockhash()"
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#deprecated-standards
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
	- ^0.4.18 (dataset/contracts/transaction_order/23368.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Parameter AccessControl.setCEO(address)._newCEO (dataset/contracts/transaction_order/23368.sol#40) is not in mixedCase
Parameter AccessControl.setCOO(address)._newCOO (dataset/contracts/transaction_order/23368.sol#47) is not in mixedCase
Parameter CryptoDoggies.createToken(string,address,uint256)._name (dataset/contracts/transaction_order/23368.sol#175) is not in mixedCase
Parameter CryptoDoggies.createToken(string,address,uint256)._owner (dataset/contracts/transaction_order/23368.sol#175) is not in mixedCase
Parameter CryptoDoggies.createToken(string,address,uint256)._price (dataset/contracts/transaction_order/23368.sol#175) is not in mixedCase
Parameter CryptoDoggies.createToken(string)._name (dataset/contracts/transaction_order/23368.sol#183) is not in mixedCase
Parameter CryptoDoggies.getToken(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#208) is not in mixedCase
Parameter CryptoDoggies.tokensOf(address)._owner (dataset/contracts/transaction_order/23368.sol#241) is not in mixedCase
Parameter CryptoDoggies.withdrawBalance(address,uint256)._to (dataset/contracts/transaction_order/23368.sol#260) is not in mixedCase
Parameter CryptoDoggies.withdrawBalance(address,uint256)._amount (dataset/contracts/transaction_order/23368.sol#260) is not in mixedCase
Parameter CryptoDoggies.purchase(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#274) is not in mixedCase
Parameter CryptoDoggies.priceOf(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#310) is not in mixedCase
Parameter CryptoDoggies.nextPriceOf(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#319) is not in mixedCase
Parameter CryptoDoggies.balanceOf(address)._owner (dataset/contracts/transaction_order/23368.sol#342) is not in mixedCase
Parameter CryptoDoggies.ownerOf(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#346) is not in mixedCase
Parameter CryptoDoggies.approve(address,uint256)._to (dataset/contracts/transaction_order/23368.sol#350) is not in mixedCase
Parameter CryptoDoggies.approve(address,uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#350) is not in mixedCase
Parameter CryptoDoggies.transferFrom(address,address,uint256)._from (dataset/contracts/transaction_order/23368.sol#356) is not in mixedCase
Parameter CryptoDoggies.transferFrom(address,address,uint256)._to (dataset/contracts/transaction_order/23368.sol#356) is not in mixedCase
Parameter CryptoDoggies.transferFrom(address,address,uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#356) is not in mixedCase
Parameter CryptoDoggies.transfer(address,uint256)._to (dataset/contracts/transaction_order/23368.sol#364) is not in mixedCase
Parameter CryptoDoggies.transfer(address,uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#364) is not in mixedCase
Parameter CryptoDoggies.takeOwnership(uint256)._tokenId (dataset/contracts/transaction_order/23368.sol#375) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Detectors:
CryptoDoggies.increaseLimit1 (dataset/contracts/transaction_order/23368.sol#314) should be constant 
CryptoDoggies.increaseLimit2 (dataset/contracts/transaction_order/23368.sol#315) should be constant 
CryptoDoggies.increaseLimit3 (dataset/contracts/transaction_order/23368.sol#316) should be constant 
CryptoDoggies.increaseLimit4 (dataset/contracts/transaction_order/23368.sol#317) should be constant 
CryptoDoggies.startingPrice (dataset/contracts/transaction_order/23368.sol#167) should be constant 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#state-variables-that-could-be-declared-constant
INFO:Detectors:
createToken(string,address,uint256) should be declared external:
	- CryptoDoggies.createToken(string,address,uint256) (dataset/contracts/transaction_order/23368.sol#175-181)
createToken(string) should be declared external:
	- CryptoDoggies.createToken(string) (dataset/contracts/transaction_order/23368.sol#183-186)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#public-function-that-could-be-declared-external
INFO:Slither:./dataset/contracts/transaction_order/23368.sol analyzed (5 contracts with 100 detectors), 38 result(s) found
