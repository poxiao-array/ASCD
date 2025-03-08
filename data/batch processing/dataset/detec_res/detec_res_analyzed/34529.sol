'solc --version' running
'solc ./dataset/contracts/transaction_order/34529.sol --combined-json abi,ast,bin,bin-runtime,srcmap,srcmap-runtime,userdoc,devdoc,hashes,compact-format --allow-paths .,/home/poxiao/code/batch processing/dataset/contracts/transaction_order' running
INFO:Detectors:
BnsPresale.currentState() (dataset/contracts/transaction_order/34529.sol#163-179) uses a dangerous strict equality:
	- this.balance == 0 (dataset/contracts/transaction_order/34529.sol#172)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#dangerous-strict-equalities
INFO:Detectors:
BnsPresale.fallback().state (dataset/contracts/transaction_order/34529.sol#76) shadows:
	- BnsPresale.state() (dataset/contracts/transaction_order/34529.sol#121-125) (function)
BnsPresale.inState(BnsPresale.State).state (dataset/contracts/transaction_order/34529.sol#191) shadows:
	- BnsPresale.state() (dataset/contracts/transaction_order/34529.sol#121-125) (function)
BnsPresale.inStateBefore(BnsPresale.State).state (dataset/contracts/transaction_order/34529.sol#197) shadows:
	- BnsPresale.state() (dataset/contracts/transaction_order/34529.sol#121-125) (function)
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#local-variable-shadowing
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
	- ^0.4.17 (dataset/contracts/transaction_order/34529.sol#1)
solc-0.4.17 is an outdated solc version. Use a more recent version (at least 0.8.0), if possible.
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#incorrect-versions-of-solidity
INFO:Detectors:
Variable BnsPresale.total_received_amount (dataset/contracts/transaction_order/34529.sol#52) is not in mixedCase
Variable BnsPresale.total_refunded (dataset/contracts/transaction_order/34529.sol#53) is not in mixedCase
Reference: https://github.com/crytic/slither/wiki/Detector-Documentation#conformance-to-solidity-naming-conventions
INFO:Slither:./dataset/contracts/transaction_order/34529.sol analyzed (1 contracts with 100 detectors), 8 result(s) found
