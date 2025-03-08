'solc --version' running
'solc ./dataset/contracts/transaction_order/30568.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Ownable.kill() (dataset/contracts/transaction_order/30568.sol#39-42) uses a dangerous strict equality:
	- require(bool)(this.balance == 0) (dataset/contracts/transaction_order/30568.sol#40)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
Ownable.changeOwner(address) (dataset/contracts/transaction_order/30568.sol#31-33) should emit an event for: 
	- owner = addr (dataset/contracts/transaction_order/30568.sol#32) 
Ownable.changeBot(address) (dataset/contracts/transaction_order/30568.sol#35-37) should emit an event for: 
	- bot = addr (dataset/contracts/transaction_order/30568.sol#36) 
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-events-access-control
INFO:Detectors:
Ownable.changeOwner(address).addr (dataset/contracts/transaction_order/30568.sol#31) lacks a zero-check on :
		- owner = addr (dataset/contracts/transaction_order/30568.sol#32)
Ownable.changeBot(address).addr (dataset/contracts/transaction_order/30568.sol#35) lacks a zero-check on :
		- bot = addr (dataset/contracts/transaction_order/30568.sol#36)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#missing-zero-address-validation
INFO:Detectors:
Version constraint ^0.4.17 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.17 (dataset/contracts/transaction_order/30568.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/30568.sol analyzed (3 contracts with 100 detectors), 7 result(s) found
