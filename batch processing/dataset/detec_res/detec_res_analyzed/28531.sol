'solc --version' running
'solc ./dataset/contracts/transaction_order/28531.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
EternalWealth.ExtendLife() (dataset/contracts/transaction_order/28531.sol#19-32) uses timestamp for comparisons
	Dangerous comparisons:
	- now > doomsday (dataset/contracts/transaction_order/28531.sol#23)
EternalWealth.ClaimBlessings() (dataset/contracts/transaction_order/28531.sol#35-41) uses timestamp for comparisons
	Dangerous comparisons:
	- require(bool)(now > doomsday) (dataset/contracts/transaction_order/28531.sol#37)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#block-timestamp
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
	- ^0.4.18 (dataset/contracts/transaction_order/28531.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function EternalWealth.ExtendLife() (dataset/contracts/transaction_order/28531.sol#19-32) is not in mixedCase
Function EternalWealth.ClaimBlessings() (dataset/contracts/transaction_order/28531.sol#35-41) is not in mixedCase
Function EternalWealth.WithdrawTithes() (dataset/contracts/transaction_order/28531.sol#43-47) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/28531.sol analyzed (1 contracts with 100 detectors), 7 result(s) found
