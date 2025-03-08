'solc --version' running
'solc ./dataset/contracts/transaction_order/22073.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
IEFBR14Contract (dataset/contracts/transaction_order/22073.sol#14-49) contract sets array length with a user-controlled value:
	- users.push(msg.sender) (dataset/contracts/transaction_order/22073.sol#31)
IEFBR14Contract (dataset/contracts/transaction_order/22073.sol#14-49) contract sets array length with a user-controlled value:
	- sponsors.push(msg.sender) (dataset/contracts/transaction_order/22073.sol#45)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#array-length-assignment
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
	- ^0.4.18 (dataset/contracts/transaction_order/22073.sol#1)
solc-0.4.18 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Function IEFBR14Contract.IEFBR14() (dataset/contracts/transaction_order/22073.sol#28-33) is not in mixedCase
Function IEFBR14Contract.Cancel() (dataset/contracts/transaction_order/22073.sol#35-40) is not in mixedCase
Function IEFBR14Contract.Sponsor() (dataset/contracts/transaction_order/22073.sol#42-47) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/22073.sol analyzed (1 contracts with 100 detectors), 7 result(s) found
