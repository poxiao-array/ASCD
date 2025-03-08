'solc --version' running
'solc ./dataset/contracts/transaction_order/36685.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
Presale.refund() (dataset/contracts/transaction_order/36685.sol#67-80) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > endTime) (dataset/contracts/transaction_order/36685.sol#69)
	- require(bool)(now < (endTime + 5184000)) (dataset/contracts/transaction_order/36685.sol#73)
Presale.transferRemaining() (dataset/contracts/transaction_order/36685.sol#82-90) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= (endTime + 5184000)) (dataset/contracts/transaction_order/36685.sol#86)
Presale.fallback() (dataset/contracts/transaction_order/36685.sol#92-102) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now >= startTime) (dataset/contracts/transaction_order/36685.sol#96)
	- require(bool)(now <= endTime) (dataset/contracts/transaction_order/36685.sol#98)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
INFO:Detectors:
Version constraint ^0.4.16 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html)
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
	- NestedArrayFunctionCallDecoder
	- ZeroFunctionSelector.
It is used by:
	- ^0.4.16 (dataset/contracts/transaction_order/36685.sol#1)
solc-0.4.16 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Slither:./dataset/contracts/transaction_order/36685.sol analyzed (2 contracts with 100 detectors), 5 result(s) found
